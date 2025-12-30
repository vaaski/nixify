#!/usr/bin/env sh
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "usage: $0 <AppName>" >&2
  exit 1
fi

app_name="$1"
script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
plist_path="$script_dir/$app_name.plist"

defaults export -app "$app_name" "$plist_path"
