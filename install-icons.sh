#!/bin/bash
# Tokyo Twilight - Custom Icon Installer
set -e

DEST_SCALABLE="$HOME/.local/share/icons/hicolor/scalable/apps"
DEST_256="$HOME/.local/share/icons/hicolor/256x256/apps"

mkdir -p "$DEST_SCALABLE" "$DEST_256"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Tokyo Twilight custom icons..."
cp -v "$SCRIPT_DIR/icons/hicolor/scalable/apps/"* "$DEST_SCALABLE/"
cp -v "$SCRIPT_DIR/icons/hicolor/256x256/apps/"* "$DEST_256/"

if command -v gtk-update-icon-cache &>/dev/null; then
  gtk-update-icon-cache -f -t "$HOME/.local/share/icons/hicolor/" 2>/dev/null || true
fi

if command -v omarchy &>/dev/null; then
  omarchy restart shell 2>/dev/null || true
fi

echo "✓ Tokyo Twilight custom icons installed successfully!"
