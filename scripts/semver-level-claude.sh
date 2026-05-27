#!/bin/bash

# Copyright 2026-Present Datadog, Inc. https://www.datadoghq.com/
# SPDX-License-Identifier: Apache-2.0

# Ask Claude whether any of the given commits introduce a SemVer-breaking
# change to the public API or visible behavior of the named crate.
#
# Usage: semver-level-claude.sh CRATE_NAME COMMIT_SHA [COMMIT_SHA ...]
#
# Stdout: a single-line JSON object
#   {"crate": "<name>", "breaking": true|false, "reason": "<short>"}
#
# Requires:
#   - ANTHROPIC_API_KEY env var
#   - Node.js with @anthropic-ai/sdk resolvable from cwd
#   - git, cargo, jq

set -euo pipefail

usage() {
  echo "Usage: $0 CRATE_NAME COMMIT_SHA [COMMIT_SHA ...]" >&2
  exit 2
}

[[ $# -ge 2 ]] || usage
: "${ANTHROPIC_API_KEY:?ANTHROPIC_API_KEY env var is required}"

CRATE=$1
shift

# Locate the crate directory via cargo metadata so the diff can be scoped to it.
MANIFEST=$(cargo metadata --no-deps --format-version 1 2>/dev/null \
  | jq -r --arg c "$CRATE" '.packages[] | select(.name == $c) | .manifest_path' \
  | head -1)

if [[ -z "$MANIFEST" ]]; then
  echo "semver-level-claude: crate '$CRATE' not found in workspace" >&2
  exit 2
fi

REPO_ROOT=$(git rev-parse --show-toplevel)
CRATE_REL_DIR=$(dirname "$MANIFEST")
CRATE_REL_DIR=${CRATE_REL_DIR#"$REPO_ROOT"/}

CTX=$(mktemp)
trap 'rm -f "$CTX"' EXIT

{
  for sha in "$@"; do
    echo "===== Commit $sha ====="
    git --no-pager show --no-color --stat \
      --pretty='Subject: %s%n%nBody:%n%b' "$sha" -- "$CRATE_REL_DIR" || true
    echo
    echo "----- Diff (scoped to $CRATE_REL_DIR) -----"
    git --no-pager show --no-color --pretty= "$sha" -- "$CRATE_REL_DIR" || true
    echo
  done
} > "$CTX"

CRATE_NAME="$CRATE" CTX_FILE="$CTX" node - <<'NODE'
const Anthropic = require('@anthropic-ai/sdk');
const fs = require('node:fs');

const crate = process.env.CRATE_NAME;
const context = fs.readFileSync(process.env.CTX_FILE, 'utf8');

const SYSTEM = [
  'You review Rust crate commits and decide whether they introduce a',
  "SemVer-breaking change to that crate's public API or visible behavior.",
  '',
  'Treat as BREAKING:',
  '- removal, rename, or signature change of any pub item',
  '- new required fields on a pub struct that previously had defaulted construction',
  '- changes to #[repr] on a pub type',
  '- behavior changes that violate documented invariants of pub APIs',
  '',
  'Treat as NOT BREAKING:',
  '- internal refactors or private-only changes',
  '- purely additive pub items (new fn, new variant on a #[non_exhaustive] enum, ...)',
  '- doc, test, or example only changes',
  '- dependency bumps with no surface change',
  '',
  'The conventional-commit "!:" marker is a hint, not authoritative — judge from the diff.',
  '',
  'Reply with a single JSON object on stdout, no prose, no markdown:',
  '{"breaking": true|false, "reason": "<one short sentence>"}',
].join('\n');

(async () => {
  const client = new Anthropic();
  const resp = await client.messages.create({
    model: 'claude-sonnet-4-6',
    max_tokens: 256,
    system: [
      { type: 'text', text: SYSTEM, cache_control: { type: 'ephemeral' } },
    ],
    messages: [{
      role: 'user',
      content: `Crate under review: ${crate}\n\n${context}`,
    }],
  });
  const text = resp.content.map(c => c.text || '').join('').trim();
  const match = text.match(/\{[\s\S]*\}/);
  if (!match) {
    console.error('Claude did not return JSON. Raw response:\n' + text);
    process.exit(1);
  }
  const parsed = JSON.parse(match[0]);
  console.log(JSON.stringify({
    crate,
    breaking: !!parsed.breaking,
    reason: parsed.reason || '',
  }));
})().catch(err => {
  console.error('Anthropic call failed:', (err && err.message) || err);
  process.exit(1);
});
NODE
