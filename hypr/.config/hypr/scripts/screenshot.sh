#!/usr/bin/env bash
# Screenshot with grimblast, then open it in satty to annotate,
# save to a file, or copy to the clipboard.
#
# Usage: screenshot.sh [area|screen]   (default: area)
#
# In satty:
#   Enter     -> copy to clipboard
#   Ctrl+S    -> save to file (default output filename set below)
#   Ctrl+Shift+S -> save as (file dialog)

set -euo pipefail

TARGET="${1:-area}"

TMP="$(mktemp --suffix=.png)"
trap 'rm -f "$TMP"' EXIT

# Capture the requested target with grimblast.
grimblast save "$TARGET" "$TMP" || exit 1

# Open the capture in satty for annotation / save / copy.
satty --filename "$TMP" \
	--output-filename "$HOME/Pictures/Screenshots/screenshot-$(date '+%Y%m%d-%H%M%S').png"
