#!/bin/bash
# Check Public API Changes Script
# Executes cargo-public-api diff and determines the semver level of changes
#
# Usage: ./check-public-api.sh [OPTIONS] -p PACKAGE RANGE
#
# Output: JSON with change level (major, minor, patch) and details

set -euo pipefail

# Parse arguments
PACKAGE=""
RANGE=""
ALL_FEATURES=false
FORMAT="json"
VERBOSE=false

print_usage() {
    echo "Usage: $0 [OPTIONS] -p PACKAGE RANGE"
    echo ""
    echo "Executes cargo-public-api diff and determines the semver level of changes."
    echo ""
    echo "Arguments:"
    echo "  -p PACKAGE      Package name to check"
    echo "  RANGE           Git range to compare (e.g., v1.0.0..HEAD)"
    echo ""
    echo "Options:"
    echo "  --all-features  Enable all features"
    echo "  --format=FORMAT Output format: json (default), summary"
    echo "  --verbose, -v   Show verbose output"
    echo "  --help, -h      Show this help message"
    echo ""
    echo "Examples:"
    echo "  ./check-public-api.sh -p libdd-common v1.0.0..HEAD"
    echo "  ./check-public-api.sh -p libdd-common --all-features libdd-common-v1.0.0..HEAD"
    echo ""
    echo "Output JSON format:"
    echo '  {"package":"name","range":"tag..HEAD","level":"minor","removed":0,"changed":0,"added":5}'
    echo ""
    echo "Semver level rules:"
    echo "  major - Any removed or changed items (breaking changes)"
    echo "  minor - Only added items (backwards compatible additions)"
    echo "  patch - No public API changes"
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        -p)
            PACKAGE="$2"
            shift 2
            ;;
        --all-features)
            ALL_FEATURES=true
            shift
            ;;
        --format=*)
            FORMAT="${1#--format=}"
            shift
            ;;
        --verbose|-v)
            VERBOSE=true
            shift
            ;;
        --help|-h)
            print_usage
            exit 0
            ;;
        -*)
            echo "Unknown option: $1" >&2
            echo "Use --help for usage information" >&2
            exit 1
            ;;
        *)
            # Positional argument - treat as range
            RANGE="$1"
            shift
            ;;
    esac
done

# Validate required arguments
if [ -z "$PACKAGE" ]; then
    echo "ERROR: Package name is required (-p PACKAGE)" >&2
    exit 1
fi

if [ -z "$RANGE" ]; then
    echo "ERROR: Git range is required (e.g., v1.0.0..HEAD)" >&2
    exit 1
fi

log_verbose() {
    if [ "$VERBOSE" = true ]; then
        echo "$@" >&2
    fi
}

# Build cargo public-api command
CMD="cargo public-api -p $PACKAGE --color=never"
if [ "$ALL_FEATURES" = true ]; then
    CMD="$CMD --all-features"
fi
CMD="$CMD diff --force $RANGE"

log_verbose "Executing: $CMD"

# Run cargo public-api diff and capture output
DIFF_OUTPUT=$(eval "$CMD" 2>&1) || true

log_verbose "Raw output:"
log_verbose "$DIFF_OUTPUT"

# Parse the output to count removed, changed, and added items
# cargo-public-api diff output format:
#   Removed:
#   - pub fn some_function()
#   Changed:
#   - pub fn changed_function() -> OldType
#   + pub fn changed_function() -> NewType
#   Added:
#   + pub fn new_function()

REMOVED_COUNT=0
CHANGED_COUNT=0
ADDED_COUNT=0

CURRENT_SECTION=""

while IFS= read -r line; do
    echo "LINE: $line"
    case "$line" in
        "Removed items from the public API"*)
            CURRENT_SECTION="removed"
            ;;
        "Changed items in the public API"*)
            CURRENT_SECTION="changed"
            ;;
        "Added items to the public API"*)
            CURRENT_SECTION="added"
            ;;
        "-"*)
            if [ "$CURRENT_SECTION" = "removed" ]; then
                REMOVED_COUNT=$((REMOVED_COUNT + 1))
            fi
            # Don't count "-" lines in "Changed" section, they're paired with "+"
            ;;
        "+"*)
            if [ "$CURRENT_SECTION" = "changed" ]; then
                CHANGED_COUNT=$((CHANGED_COUNT + 1))
            elif [ "$CURRENT_SECTION" = "added" ]; then
                ADDED_COUNT=$((ADDED_COUNT + 1))
            fi
            ;;
    esac
done <<< "$DIFF_OUTPUT"

log_verbose "Counts: removed=$REMOVED_COUNT, changed=$CHANGED_COUNT, added=$ADDED_COUNT"

# Determine semver level based on changes
# Major: Any removed or changed items (breaking changes)
# Minor: Only added items (backwards compatible)
# Patch: No changes
if [ "$REMOVED_COUNT" -gt 0 ] || [ "$CHANGED_COUNT" -gt 0 ]; then
    LEVEL="major"
elif [ "$ADDED_COUNT" -gt 0 ]; then
    LEVEL="minor"
else
    LEVEL="patch"
fi

# Output results
case "$FORMAT" in
    json)
        jq -n \
            --arg package "$PACKAGE" \
            --arg range "$RANGE" \
            --arg level "$LEVEL" \
            --argjson removed "$REMOVED_COUNT" \
            --argjson changed "$CHANGED_COUNT" \
            --argjson added "$ADDED_COUNT" \
            '{package: $package, range: $range, level: $level, removed: $removed, changed: $changed, added: $added}'
        ;;
    summary)
        echo "Package: $PACKAGE"
        echo "Range: $RANGE"
        echo "Level: $LEVEL"
        echo ""
        echo "Changes:"
        echo "  Removed: $REMOVED_COUNT"
        echo "  Changed: $CHANGED_COUNT"
        echo "  Added: $ADDED_COUNT"
        if [ -n "$DIFF_OUTPUT" ] && [ "$DIFF_OUTPUT" != "No changes detected" ]; then
            echo ""
            echo "Details:"
            echo "$DIFF_OUTPUT"
        fi
        ;;
    *)
        echo "Unknown format: $FORMAT" >&2
        echo "Available formats: json, summary" >&2
        exit 1
        ;;
esac
