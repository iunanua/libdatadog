# Changelog
## [unreleased]

### ⚙️ Miscellaneous Tasks

- Add changelog for every published crate ([#1396](https://github.com/datadog/libdatadog/issues/1396)) - ([5c4a024](https://github.com/datadog/libdatadog/commit/5c4a024598d6fe6cbd93a3e3dc9882848912064f))
## [libdd-ddsketch-v1.0.1](https://github.com/datadog/libdatadog/compare/libdd-ddsketch-v1.0.0..libdd-ddsketch-v1.0.1) - 2026-01-16

### ⛰️  Features

- *(config_visibility)* [APMAPI-1693] Telemetry for enhanced config reporting ([#1385](https://github.com/datadog/libdatadog/issues/1385)) - ([435107c](https://github.com/datadog/libdatadog/commit/435107c245112397914935c0f7148a18b91cafc6))
- *(ffe)* Remove unstable flag metadata keys ([#1369](https://github.com/datadog/libdatadog/issues/1369)) - ([0808f16](https://github.com/datadog/libdatadog/commit/0808f169a34c92187178a25ea8500bcfae37fcec))
- *(profiler)* Support cancellation tokens in exporter cxx bindings ([#1422](https://github.com/datadog/libdatadog/issues/1422)) - ([ee82a73](https://github.com/datadog/libdatadog/commit/ee82a733ef0e2580ed5a5649ae5908cb493e93c2))
- *(profiling)* File endpoint for exporter ([#1421](https://github.com/datadog/libdatadog/issues/1421)) - ([e99f32f](https://github.com/datadog/libdatadog/commit/e99f32f5ee624778f1a2b53e17ce47103abffdf6))
- *(profiling)* Simpler API for profile exporter ([#1423](https://github.com/datadog/libdatadog/issues/1423)) - ([0d4ebbe](https://github.com/datadog/libdatadog/commit/0d4ebbe55ab841c2af8db41da74597c007375f0e))
- *(profiling)* C++ API ([#1382](https://github.com/datadog/libdatadog/issues/1382)) - ([0959f2d](https://github.com/datadog/libdatadog/commit/0959f2dddb5a983ee75b852870be9f1a44cbbeaf))
- *(profiling)* FallibleStringWriter ([#1403](https://github.com/datadog/libdatadog/issues/1403)) - ([13970ff](https://github.com/datadog/libdatadog/commit/13970ff6f5512f672951667c1ff17e7b1e71288f))
- *(profiling)* `Profile::{try_new2,try_add_sample2}` ([#1351](https://github.com/datadog/libdatadog/issues/1351)) - ([f646506](https://github.com/datadog/libdatadog/commit/f646506e38641d70c27f4cf9ebf818f6b7c6dcb1))
- *(profiling)* Add ProfilesDictionary ([#1349](https://github.com/datadog/libdatadog/issues/1349)) - ([7ce9a60](https://github.com/datadog/libdatadog/commit/7ce9a60b8d19eee21d6a7f7e16f6533e6ee7324d))
- *(profiling)* Parallel set and string set ([#1347](https://github.com/datadog/libdatadog/issues/1347)) - ([af93f6f](https://github.com/datadog/libdatadog/commit/af93f6fa5f112e99748b96e02cea7a0dbe14dd0d))
- *(profiling-ffi)* Profile_add2 & Profile_with_dictionary ([#1406](https://github.com/datadog/libdatadog/issues/1406)) - ([379c66e](https://github.com/datadog/libdatadog/commit/379c66e336f706441cacd1f5a443f9c465567cce))
- *(profiling-ffi)* ProfilesDictionary ([#1405](https://github.com/datadog/libdatadog/issues/1405)) - ([3757554](https://github.com/datadog/libdatadog/commit/375755474367e7e7612e580922316dc3d66e4aff))
- *(profiling-ffi)* ProfileStatus & ProfileError ([#1404](https://github.com/datadog/libdatadog/issues/1404)) - ([b656c23](https://github.com/datadog/libdatadog/commit/b656c23657ed82f1eaef6f5eb49a2a7134deea5f))
- *(trace_utils)* Allow sending trace stats using custom HTTP client ([#1345](https://github.com/datadog/libdatadog/issues/1345)) - ([c98467e](https://github.com/datadog/libdatadog/commit/c98467eb286c61b4483b5af5a33b268a55ccc6ff))

### 🐛 Bug Fixes

- *(bin_tests)* Race conditions between concurrent tests ([#1402](https://github.com/datadog/libdatadog/issues/1402)) - ([5036cae](https://github.com/datadog/libdatadog/commit/5036cae5be92b7214ddd28d6f145be6d58a90111))
- *(profiling)* Reduce OOM edges in `ProfileExporter::build` ([#1436](https://github.com/datadog/libdatadog/issues/1436)) - ([76445a8](https://github.com/datadog/libdatadog/commit/76445a852751ad91fd021924669286a3608c4fed))
- Fix commits iteration - ([25147fa](https://github.com/datadog/libdatadog/commit/25147fab2f88527c1603db5b651c5434cd74878a))
- Fix commits iteration - ([4bb1470](https://github.com/datadog/libdatadog/commit/4bb14705a5d2433ee18d734a06db17666d99570b))
- Fix commits iteration - ([ddee872](https://github.com/datadog/libdatadog/commit/ddee87262af3845e12f50b56edcb9a3384cea8d5))
- Fix? - ([91c5e99](https://github.com/datadog/libdatadog/commit/91c5e9919d7b9c04831b0bd572c75bc35651fb6a))
- Fix - ([82509d0](https://github.com/datadog/libdatadog/commit/82509d066d629ab4833d1a6a8b6ed80e8c77e50b))
- Fix check-public-api.sh - ([109e244](https://github.com/datadog/libdatadog/commit/109e244d756016520de313d53b01fb48ed81d8b9))
- Fix public-api check - ([13a397d](https://github.com/datadog/libdatadog/commit/13a397d2c5072c43d6eab308109b20fc92753ed9))
- Fix public-api check - ([838da95](https://github.com/datadog/libdatadog/commit/838da95618e29c46a898c3a3db23c5e2a36fdf3c))
- Fix public-api check - ([f78622f](https://github.com/datadog/libdatadog/commit/f78622fbd767970cc213bd6fc57c56ee188b38ff))
- Fix public-api check - ([fdbf29b](https://github.com/datadog/libdatadog/commit/fdbf29bf9d51754c6f582d1baca0da517df7c988))
- Fix public-api check - ([f73e6e9](https://github.com/datadog/libdatadog/commit/f73e6e9a4760312d2636fc282418b1ff0eb7ec23))
- Bump codecov action to 5.5.1 ([#1354](https://github.com/datadog/libdatadog/issues/1354)) - ([8478927](https://github.com/datadog/libdatadog/commit/84789278dd93a2a1fdb199d5068a490456d51862))
- Bundle ffe-ffi with the rest of libdatadog ffi ([#1348](https://github.com/datadog/libdatadog/issues/1348)) - ([6e559d7](https://github.com/datadog/libdatadog/commit/6e559d75fd184d5cc46c0caf8b78c2b31a36af5e))

### 🚜 Refactor

- Harden and simplify ProfileStatus more ([#1419](https://github.com/datadog/libdatadog/issues/1419)) - ([5027515](https://github.com/datadog/libdatadog/commit/502751505782f8ae8f1446d3f4c19ed1b344bae9))
- Simplify ProfileStatus encoding ([#1416](https://github.com/datadog/libdatadog/issues/1416)) - ([cf34d04](https://github.com/datadog/libdatadog/commit/cf34d0439b2f2b8899081795fd10d30c3497ce08))

### 🧪 Testing

- *(data-pipeline)* Handle EINTR in test_health_metrics_disabled ([#1430](https://github.com/datadog/libdatadog/issues/1430)) - ([e13f239](https://github.com/datadog/libdatadog/commit/e13f2393185031757f493fcebdfe0e9e435b60e9))

### ⚙️ Miscellaneous Tasks

- *(caching)* Switch to rust_cache for caching ([#1342](https://github.com/datadog/libdatadog/issues/1342)) - ([2b91886](https://github.com/datadog/libdatadog/commit/2b91886ea4c07b2f86f206a6b3dac04a73a4fd77))
- *(ci)* Set benchmarking jobs to be interruptible outside main ([#1356](https://github.com/datadog/libdatadog/issues/1356)) - ([ccf7479](https://github.com/datadog/libdatadog/commit/ccf7479f53e7b93dc0edf4976aab4ac56847e783))
- *(publishing)* Enforce conventional commit linting on the PR name ([#1413](https://github.com/datadog/libdatadog/issues/1413)) - ([5c4e535](https://github.com/datadog/libdatadog/commit/5c4e535a3fe581c2d4a9ca586015e4375e76126b))
- *(remote-config)* Add client feature flag to exclude client code ([#1375](https://github.com/datadog/libdatadog/issues/1375)) - ([aeae62b](https://github.com/datadog/libdatadog/commit/aeae62b67a2ae9a48315d69a003e5948de7de4f0))
- *(ruby)* Bump libdatadog to v25.0.0 ([#1437](https://github.com/datadog/libdatadog/issues/1437)) - ([9ea31cc](https://github.com/datadog/libdatadog/commit/9ea31ccba206f6cfd331acee9f638b40df9cdfaa))
- *(trace-utils)* Bump the test agent version used for integration tests ([#1417](https://github.com/datadog/libdatadog/issues/1417)) - ([e7c2ff8](https://github.com/datadog/libdatadog/commit/e7c2ff864ff3ecca090abe07291a2207c9e413c7))
- *(versioning)* Mark build-common crate with publish=false - ([77838bb](https://github.com/datadog/libdatadog/commit/77838bbd064988647e0588f6c9984388086e7dff))
- Release - ([7aaa7fb](https://github.com/datadog/libdatadog/commit/7aaa7fb8a2cce73687b3ea1e5a82e955196b733f))
- Add changelog for every published crate ([#1396](https://github.com/datadog/libdatadog/issues/1396)) - ([5c4a024](https://github.com/datadog/libdatadog/commit/5c4a024598d6fe6cbd93a3e3dc9882848912064f))

### Build

- Update `prost` crates ([#1426](https://github.com/datadog/libdatadog/issues/1426)) - ([14bab86](https://github.com/datadog/libdatadog/commit/14bab865cfab5151fd399c594ab8f67e8bc7dcf1))

### Crashtracker

- Support cxx bindings for crashinfo ([#1379](https://github.com/datadog/libdatadog/issues/1379)) - ([6b26318](https://github.com/datadog/libdatadog/commit/6b263189044f48cec6a67745036bd027b44f6daa))
## [unreleased]

### Build

- Update `prost` crates ([#1426](https://github.com/datadog/libdatadog/issues/1426)) - ([14bab86](https://github.com/datadog/libdatadog/commit/14bab865cfab5151fd399c594ab8f67e8bc7dcf1))
## [libdd-ddsketch-v1.0.1](https://github.com/datadog/libdatadog/compare/libdd-ddsketch-v1.0.0..libdd-ddsketch-v1.0.1) - 2026-01-16

### ⛰️  Features

- *(config_visibility)* [APMAPI-1693] Telemetry for enhanced config reporting ([#1385](https://github.com/datadog/libdatadog/issues/1385)) - ([435107c](https://github.com/datadog/libdatadog/commit/435107c245112397914935c0f7148a18b91cafc6))
- *(ffe)* Remove unstable flag metadata keys ([#1369](https://github.com/datadog/libdatadog/issues/1369)) - ([0808f16](https://github.com/datadog/libdatadog/commit/0808f169a34c92187178a25ea8500bcfae37fcec))
- *(profiler)* Support cancellation tokens in exporter cxx bindings ([#1422](https://github.com/datadog/libdatadog/issues/1422)) - ([ee82a73](https://github.com/datadog/libdatadog/commit/ee82a733ef0e2580ed5a5649ae5908cb493e93c2))
- *(profiling)* File endpoint for exporter ([#1421](https://github.com/datadog/libdatadog/issues/1421)) - ([e99f32f](https://github.com/datadog/libdatadog/commit/e99f32f5ee624778f1a2b53e17ce47103abffdf6))
- *(profiling)* Simpler API for profile exporter ([#1423](https://github.com/datadog/libdatadog/issues/1423)) - ([0d4ebbe](https://github.com/datadog/libdatadog/commit/0d4ebbe55ab841c2af8db41da74597c007375f0e))
- *(profiling)* C++ API ([#1382](https://github.com/datadog/libdatadog/issues/1382)) - ([0959f2d](https://github.com/datadog/libdatadog/commit/0959f2dddb5a983ee75b852870be9f1a44cbbeaf))
- *(profiling)* FallibleStringWriter ([#1403](https://github.com/datadog/libdatadog/issues/1403)) - ([13970ff](https://github.com/datadog/libdatadog/commit/13970ff6f5512f672951667c1ff17e7b1e71288f))
- *(profiling)* `Profile::{try_new2,try_add_sample2}` ([#1351](https://github.com/datadog/libdatadog/issues/1351)) - ([f646506](https://github.com/datadog/libdatadog/commit/f646506e38641d70c27f4cf9ebf818f6b7c6dcb1))
- *(profiling)* Add ProfilesDictionary ([#1349](https://github.com/datadog/libdatadog/issues/1349)) - ([7ce9a60](https://github.com/datadog/libdatadog/commit/7ce9a60b8d19eee21d6a7f7e16f6533e6ee7324d))
- *(profiling)* Parallel set and string set ([#1347](https://github.com/datadog/libdatadog/issues/1347)) - ([af93f6f](https://github.com/datadog/libdatadog/commit/af93f6fa5f112e99748b96e02cea7a0dbe14dd0d))
- *(profiling-ffi)* Profile_add2 & Profile_with_dictionary ([#1406](https://github.com/datadog/libdatadog/issues/1406)) - ([379c66e](https://github.com/datadog/libdatadog/commit/379c66e336f706441cacd1f5a443f9c465567cce))
- *(profiling-ffi)* ProfilesDictionary ([#1405](https://github.com/datadog/libdatadog/issues/1405)) - ([3757554](https://github.com/datadog/libdatadog/commit/375755474367e7e7612e580922316dc3d66e4aff))
- *(profiling-ffi)* ProfileStatus & ProfileError ([#1404](https://github.com/datadog/libdatadog/issues/1404)) - ([b656c23](https://github.com/datadog/libdatadog/commit/b656c23657ed82f1eaef6f5eb49a2a7134deea5f))
- *(trace_utils)* Allow sending trace stats using custom HTTP client ([#1345](https://github.com/datadog/libdatadog/issues/1345)) - ([c98467e](https://github.com/datadog/libdatadog/commit/c98467eb286c61b4483b5af5a33b268a55ccc6ff))

### 🐛 Bug Fixes

- *(bin_tests)* Race conditions between concurrent tests ([#1402](https://github.com/datadog/libdatadog/issues/1402)) - ([5036cae](https://github.com/datadog/libdatadog/commit/5036cae5be92b7214ddd28d6f145be6d58a90111))
- *(profiling)* Reduce OOM edges in `ProfileExporter::build` ([#1436](https://github.com/datadog/libdatadog/issues/1436)) - ([76445a8](https://github.com/datadog/libdatadog/commit/76445a852751ad91fd021924669286a3608c4fed))
- Fix commits iteration - ([25147fa](https://github.com/datadog/libdatadog/commit/25147fab2f88527c1603db5b651c5434cd74878a))
- Fix commits iteration - ([4bb1470](https://github.com/datadog/libdatadog/commit/4bb14705a5d2433ee18d734a06db17666d99570b))
- Fix commits iteration - ([ddee872](https://github.com/datadog/libdatadog/commit/ddee87262af3845e12f50b56edcb9a3384cea8d5))
- Fix? - ([91c5e99](https://github.com/datadog/libdatadog/commit/91c5e9919d7b9c04831b0bd572c75bc35651fb6a))
- Fix - ([82509d0](https://github.com/datadog/libdatadog/commit/82509d066d629ab4833d1a6a8b6ed80e8c77e50b))
- Fix check-public-api.sh - ([109e244](https://github.com/datadog/libdatadog/commit/109e244d756016520de313d53b01fb48ed81d8b9))
- Fix public-api check - ([13a397d](https://github.com/datadog/libdatadog/commit/13a397d2c5072c43d6eab308109b20fc92753ed9))
- Fix public-api check - ([838da95](https://github.com/datadog/libdatadog/commit/838da95618e29c46a898c3a3db23c5e2a36fdf3c))
- Fix public-api check - ([f78622f](https://github.com/datadog/libdatadog/commit/f78622fbd767970cc213bd6fc57c56ee188b38ff))
- Fix public-api check - ([fdbf29b](https://github.com/datadog/libdatadog/commit/fdbf29bf9d51754c6f582d1baca0da517df7c988))
- Fix public-api check - ([f73e6e9](https://github.com/datadog/libdatadog/commit/f73e6e9a4760312d2636fc282418b1ff0eb7ec23))
- Bump codecov action to 5.5.1 ([#1354](https://github.com/datadog/libdatadog/issues/1354)) - ([8478927](https://github.com/datadog/libdatadog/commit/84789278dd93a2a1fdb199d5068a490456d51862))
- Bundle ffe-ffi with the rest of libdatadog ffi ([#1348](https://github.com/datadog/libdatadog/issues/1348)) - ([6e559d7](https://github.com/datadog/libdatadog/commit/6e559d75fd184d5cc46c0caf8b78c2b31a36af5e))

### 🚜 Refactor

- Harden and simplify ProfileStatus more ([#1419](https://github.com/datadog/libdatadog/issues/1419)) - ([5027515](https://github.com/datadog/libdatadog/commit/502751505782f8ae8f1446d3f4c19ed1b344bae9))
- Simplify ProfileStatus encoding ([#1416](https://github.com/datadog/libdatadog/issues/1416)) - ([cf34d04](https://github.com/datadog/libdatadog/commit/cf34d0439b2f2b8899081795fd10d30c3497ce08))

### 🧪 Testing

- *(data-pipeline)* Handle EINTR in test_health_metrics_disabled ([#1430](https://github.com/datadog/libdatadog/issues/1430)) - ([e13f239](https://github.com/datadog/libdatadog/commit/e13f2393185031757f493fcebdfe0e9e435b60e9))

### ⚙️ Miscellaneous Tasks

- *(caching)* Switch to rust_cache for caching ([#1342](https://github.com/datadog/libdatadog/issues/1342)) - ([2b91886](https://github.com/datadog/libdatadog/commit/2b91886ea4c07b2f86f206a6b3dac04a73a4fd77))
- *(ci)* Set benchmarking jobs to be interruptible outside main ([#1356](https://github.com/datadog/libdatadog/issues/1356)) - ([ccf7479](https://github.com/datadog/libdatadog/commit/ccf7479f53e7b93dc0edf4976aab4ac56847e783))
- *(publishing)* Enforce conventional commit linting on the PR name ([#1413](https://github.com/datadog/libdatadog/issues/1413)) - ([5c4e535](https://github.com/datadog/libdatadog/commit/5c4e535a3fe581c2d4a9ca586015e4375e76126b))
- *(remote-config)* Add client feature flag to exclude client code ([#1375](https://github.com/datadog/libdatadog/issues/1375)) - ([aeae62b](https://github.com/datadog/libdatadog/commit/aeae62b67a2ae9a48315d69a003e5948de7de4f0))
- *(ruby)* Bump libdatadog to v25.0.0 ([#1437](https://github.com/datadog/libdatadog/issues/1437)) - ([9ea31cc](https://github.com/datadog/libdatadog/commit/9ea31ccba206f6cfd331acee9f638b40df9cdfaa))
- *(trace-utils)* Bump the test agent version used for integration tests ([#1417](https://github.com/datadog/libdatadog/issues/1417)) - ([e7c2ff8](https://github.com/datadog/libdatadog/commit/e7c2ff864ff3ecca090abe07291a2207c9e413c7))
- *(versioning)* Mark build-common crate with publish=false - ([77838bb](https://github.com/datadog/libdatadog/commit/77838bbd064988647e0588f6c9984388086e7dff))
- Release - ([7aaa7fb](https://github.com/datadog/libdatadog/commit/7aaa7fb8a2cce73687b3ea1e5a82e955196b733f))
- Add changelog for every published crate ([#1396](https://github.com/datadog/libdatadog/issues/1396)) - ([5c4a024](https://github.com/datadog/libdatadog/commit/5c4a024598d6fe6cbd93a3e3dc9882848912064f))

### Build

- Update `prost` crates ([#1426](https://github.com/datadog/libdatadog/issues/1426)) - ([14bab86](https://github.com/datadog/libdatadog/commit/14bab865cfab5151fd399c594ab8f67e8bc7dcf1))

### Crashtracker

- Support cxx bindings for crashinfo ([#1379](https://github.com/datadog/libdatadog/issues/1379)) - ([6b26318](https://github.com/datadog/libdatadog/commit/6b263189044f48cec6a67745036bd027b44f6daa))

## Unreleased

### Changed
- Updated `prost` dependency from 0.13.5 to 0.14.1
- Updated `prost-build` dependency from 0.13.5 to 0.14.1

## 1.0.0 - 2025-11-17

Initial release.
