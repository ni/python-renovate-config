#!/usr/bin/env bash

set -euo pipefail

docs_dir="docs"
pages_base_url="https://ni.github.io/python-renovate-config"

mkdir -p "${docs_dir}/presets/group" "${docs_dir}/presets/packages"
find "${docs_dir}" -type f -name '*.json' -delete

cp default.json recommended.json "${docs_dir}/"
cp presets/*.json "${docs_dir}/presets/"
cp presets/group/*.json "${docs_dir}/presets/group/"
cp presets/packages/*.json "${docs_dir}/presets/packages/"

find "${docs_dir}" -type f -name '*.json' -print0 | xargs -0 sed -E -i \
  -e "s|local>ni/python-renovate-config:([A-Za-z0-9_-]+)|${pages_base_url}/\\1.json|g" \
  -e "s|local>ni/python-renovate-config//([A-Za-z0-9_./-]+)|${pages_base_url}/\\1.json|g"
