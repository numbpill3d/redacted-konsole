#!/usr/bin/env bash
# Redacted — Konsole & kitty Colours — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
K=${XDG_DATA_HOME:-$HOME/.local/share}/konsole; mkdir -p "$K"
cp "$HERE"/Redacted.colorscheme "$HERE"/Redacted.profile "$K"/
C=${XDG_CONFIG_HOME:-$HOME/.config}/kitty; mkdir -p "$C"; cp "$HERE"/redacted-kitty.conf "$C"/
echo "Konsole: Settings > Switch Profile > Redacted.   kitty: add 'include redacted-kitty.conf' to kitty.conf"
