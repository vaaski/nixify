#!/usr/bin/env sh
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

find "$script_dir" -maxdepth 1 -type f -name '*.plist' -print0 |
  while IFS= read -r -d '' plist_path; do
    app_name="$(basename "$plist_path" .plist)"
    defaults import -app "$app_name" "$plist_path"
  done
