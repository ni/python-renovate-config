# `ni/python-renovate-config`

`ni/python-renovate-config` is a Git repository containing Renovate configurations for NI Python
projects.

## Table of Contents

- [`ni/python-renovate-config`](#nipython-renovate-config)
  - [Table of Contents](#table-of-contents)
  - [`default.json`](#defaultjson)
  - [`recommended.json`](#recommendedjson)
  - [Presets](#presets)
    - [`presets/enableGitSubmodules.json`](#presetsenablegitsubmodulesjson)
    - [`presets/enableVulnerabilityAlerts.json`](#presetsenablevulnerabilityalertsjson)
    - [Group Presets](#group-presets)
      - [`presets/group/githubActions.json`](#presetsgroupgithubactionsjson)
      - [`presets/group/python.json`](#presetsgrouppythonjson)
    - [Packages Presets](#packages-presets)
      - [`presets/packages/niPython.json`](#presetspackagesnipythonjson)

## `default.json`

The default configuration includes settings that are common to all NI Python projects.

- Extends [`config:recommended`](https://docs.renovatebot.com/presets-config/#configrecommended)
- Branch prefix: `users/renovate`
- Time zone: `US/Central`

## `recommended.json`

The recommended configuration includes settings that are recommended for all NI Python projects, but
which some project owners may want to configure differently.

- Extends `default.json`
- Updates GitHub Actions early Monday mornings
- Updates Python packages early Monday mornings
- Runs lock file maintenance monthly in order to upgrade indirect dependencies that are not covered
  by the weekly update, such as `certifi` or `typing_extensions`.
- Enables vulnerability alerts ([`presets/enableVulnerabilityAlerts.json`](./presets/enableVulnerabilityAlerts.json))
- Pins GitHub Action digests to semver
  ([`helpers:pinGitHubActionDigestsToSemver`](https://docs.renovatebot.com/presets-helpers/#helperspingithubactiondigeststosemver)).
  This pins the digest hash so that builds are reproducible even if upstream updates their Git tags.
  It also adds a comment showing the version and treats the version as semantic versioning. For
  example, this converts `uses: actions/checkout@v4` to `uses:
  actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2`.
- Rebases stale PRs ([:rebaseStalePrs](https://docs.renovatebot.com/presets-default/#rebasestaleprs))
- Sets [`minimumReleaseAge`](https://docs.renovatebot.com/configuration-options/#minimumreleaseage)
  to 14 days by default and 1 day for `ni/python-actions` and NI Python packages. If an upstream
  package is compromised, delaying makes it more likely that the compromised version will be
  detected and pulled from the repository before we try to upgrade. This should not affect security
  vulnerability alerts.

## Presets

### `presets/enableGitSubmodules.json`

- Enables the [`git-submodules`](https://docs.renovatebot.com/modules/manager/git-submodules/) manager.

### `presets/enableVulnerabilityAlerts.json`

- Extends [`:enableVulnerabilityAlerts`](https://docs.renovatebot.com/presets-default/#enablevulnerabilityalerts)
- Enables [`osvVulnerabilityAlerts`](https://docs.renovatebot.com/configuration-options/#osvvulnerabilityalerts)

### Group Presets

#### `presets/group/githubActions.json`

Group GitHub Actions together.

#### `presets/group/python.json`

Group Python packages together.

### Packages Presets

#### `presets/packages/niPython.json`

Matches all NI Python packages.
