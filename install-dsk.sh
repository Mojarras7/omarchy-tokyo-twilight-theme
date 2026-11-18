#!/bin/bash
# Tokyo Twilight - Disk Manager (dsk) Installer
set -e

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Tokyo Twilight Disk Manager..."
cp "$SCRIPT_DIR/bin/omarchy-disk-manager" "$BIN_DIR/omarchy-disk-manager"
chmod +x "$BIN_DIR/omarchy-disk-manager"

# Configure ~/.bashrc if not already present
BASHRC="$HOME/.bashrc"
if [ -f "$BASHRC" ] && ! grep -q "omarchy-disk-manager" "$BASHRC"; then
  echo "Adding 'dsk' shell helper function to ~/.bashrc..."
  cat <<'EOF' >> "$BASHRC"

# Easy disk mount & enter tool
dsk() {
  local target_file
  target_file=$(mktemp "${TMPDIR:-/tmp}/dsk_target.XXXXXX")
  omarchy-disk-manager --target-file "$target_file" "$@"
  local ret=$?
  if [[ $ret -eq 0 && -f "$target_file" ]]; then
    local target
    target=$(cat "$target_file")
    rm -f "$target_file"
    if [[ -n "$target" && -d "$target" ]]; then
      cd "$target" || return 1
      echo -e "\033[38;2;168;85;247m❯\033[0m Entered \033[38;2;96;165;250m$target\033[0m"
    fi
  else
    rm -f "$target_file"
  fi
  return $ret
}
alias disks='dsk'
EOF
  echo "✓ Added 'dsk' to ~/.bashrc"
else
  echo "✓ 'dsk' helper already configured in ~/.bashrc"
fi

echo "✓ Tokyo Twilight Disk Manager installed successfully!"
echo "Run 'source ~/.bashrc' or open a new terminal, then type 'dsk' to use it."
