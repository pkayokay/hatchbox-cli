#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${HOME}/.local/bin"
REPO="https://raw.githubusercontent.com/pkayokay/hatchbox-cli/main/bin/hatchbox"

echo "Installing hatchbox to $INSTALL_DIR..."

mkdir -p "$INSTALL_DIR"

curl -fsSL "$REPO" -o "$INSTALL_DIR/hatchbox"
chmod +x "$INSTALL_DIR/hatchbox"
ln -sfn "$INSTALL_DIR/hatchbox" "$INSTALL_DIR/hb"

if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
  echo ""
  echo "⚠️  $INSTALL_DIR is not in your PATH."
  echo "Add it by running:"
  echo ""
  echo "  echo 'export PATH=\"\$HOME/.local/bin:\$PATH\"' >> ~/.zshrc"
  echo ""
fi

echo "Done! Run 'hatchbox --help' or 'hb --help' to get started."
