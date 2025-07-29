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
    - [Schedule Presets](#schedule-presets)
      - [`presets/schedule/earlyTuesdays.json`](#presetsscheduleearlytuesdaysjson)

## `default.json`

The default configuration includes settings that are common to all NI Python projects.

- Extends [`config:recommended`](https://docs.renovatebot.com/presets-config/#configrecommended)
- Branch prefix: `users/renovate`
- Time zone: `US/Central`

## `recommended.json`

The recommended configuration includes settings that are recommended for all NI Python projects, but
which some project owners may want to configure differently.

- Extends `default.json`
- Enables vulnerability alerts ([`presets/enableVulnerabilityAlerts.json`](./presets/enableVulnerabilityAlerts.json))
- Pins GitHub Action digests to semver ([`helpers:pinGitHubActionDigestsToSemver`](https://docs.renovatebot.com/presets-helpers/#helperspingithubactiondigeststosemver))
- Rebases stale PRs ([:rebaseStalePrs](https://docs.renovatebot.com/presets-default/#rebasestaleprs))
- Sets [`minimumReleaseAge`](https://docs.renovatebot.com/configuration-options/#minimumreleaseage)
  to 14 days by default and 1 day for `ni/python-actions` and NI Python packages
- Updates GitHub Actions early Monday mornings
- Updates Python packages early Monday mornings
- Runs lock file maintenance early Tuesday mornings

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

### Schedule Presets

#### `presets/schedule/earlyTuesdays.json`

Weekly schedule on early Tuesday mornings (before 4 AM).
