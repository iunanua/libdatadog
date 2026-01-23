# Changelog



## [2.0.0](https://github.com/datadog/libdatadog/compare/libdd-crashtracker-v1.0.0..libdd-crashtracker-v2.0.0) - 2026-01-23

### Changed

- *(crashtracking)* Add `is_crash_debug` tag to crashtracker receiver debug logs ([#1445](https://github.com/datadog/libdatadog/issues/1445)) - ([efe99d5](https://github.com/datadog/libdatadog/commit/efe99d5e2992ab029e6ad58c3a77b0f615447b95))
- Release libddcommon-v1.1.0 ([#1456](https://github.com/datadog/libdatadog/issues/1456)) - ([94cc701](https://github.com/datadog/libdatadog/commit/94cc701e24bbaacfdcc4b034419e72dea1816cc9))
- Prepare libdd-telemetry-v2.0.0 ([#1457](https://github.com/datadog/libdatadog/issues/1457)) - ([753df4f](https://github.com/datadog/libdatadog/commit/753df4f235074cd3420a7e3cd8d2ff9bc964db0d))
- [crashtracker] Retrieve panic message when crashing ([#1361](https://github.com/datadog/libdatadog/issues/1361)) - ([65a5d9a](https://github.com/datadog/libdatadog/commit/65a5d9af8c9931f8ecbf2db8729fabbc3881fb07))
- [crashtracker] Log errors in crashtracker receiver ([#1395](https://github.com/datadog/libdatadog/issues/1395)) - ([73c675b](https://github.com/datadog/libdatadog/commit/73c675b79f81978ee1190be6af0c5abec997e3b0))
- Add changelog for every published crate ([#1396](https://github.com/datadog/libdatadog/issues/1396)) - ([5c4a024](https://github.com/datadog/libdatadog/commit/5c4a024598d6fe6cbd93a3e3dc9882848912064f))

### Fixed

- *(sidecar)* AWS lambda also can return EACCESS for shm_open ([#1446](https://github.com/datadog/libdatadog/issues/1446)) - ([c65d768](https://github.com/datadog/libdatadog/commit/c65d7680109c92f49195b9a9314c9c301fc29f32))

## 1.0.0 - 2025-11-28

Initial release.
