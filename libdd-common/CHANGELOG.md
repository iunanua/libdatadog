# Changelog
## [libdd-common-v1.1.0](https://github.com/datadog/libdatadog/compare/libdd-common-v1.0.0..libdd-common-v1.1.0) - 2026-01-19

### ⛰️  Features

- *(profiling)* Simpler API for profile exporter ([#1423](https://github.com/datadog/libdatadog/issues/1423)) - ([0d4ebbe](https://github.com/datadog/libdatadog/commit/0d4ebbe55ab841c2af8db41da74597c007375f0e))

### Others

- Don't panic if CryptoProvider already installed  ([#1391](https://github.com/datadog/libdatadog/issues/1391))

fix(common: connector: rustls): don't always panic if rustls CryptoProvider already installed

feat(common: connector: rustls): good practice seem to not validate arbitrarily installed CryptoProvider

fix(common: connector: rustls): removed explanation comment

Co-authored-by: jules.wiriath <jules.wiriath@datadoghq.com> - ([2f641ea](https://github.com/datadog/libdatadog/commit/2f641eae3708c34e4adfe62c9d477e665da4f12e))

### ⚙️ Miscellaneous Tasks

- Add changelog for every published crate ([#1396](https://github.com/datadog/libdatadog/issues/1396)) - ([5c4a024](https://github.com/datadog/libdatadog/commit/5c4a024598d6fe6cbd93a3e3dc9882848912064f))

## 1.0.0 - 2025-11-14

Initial release.
