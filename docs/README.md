# Generated Config Mirror

GitHub Actions populates this directory by copying the Renovate config files and presets from the
repository root and rewriting internal `local>` references to GitHub Pages URLs rooted at:

`https://ni.github.io/python-renovate-config/`

Use `docs/recommended.json` from this directory when a Renovate host cannot resolve GitHub-local
preset references directly. The JSON files in this directory are generated and should be updated by
the workflow rather than edited by hand. The workflow also deploys this directory to GitHub Pages,
where it is served from the site root.