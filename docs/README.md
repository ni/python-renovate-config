# Generated Config Mirror

`.github/workflows/sync-docs.sh` populates this directory by copying the config fils and rewriting internal `local>` references to the GitHb Pages URLs rooted at:

`https://ni.github.io/python-renovate-config/`

Use `docs/recommended.json` from this directory when a Renovate host cannot resolve GitHub-local
preset references directly. The JSON files in this directory are generated and should be updated using the script rather than edited by hand.