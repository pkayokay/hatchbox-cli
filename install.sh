#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="/usr/local/bin"
REPO="https://raw.githubusercontent.com/pkayokay/hatchbox-cli/main/bin/hatchbox"

echo "Installing hatchbox to $INSTALL_DIR..."

if [[ ! -d "$INSTALL_DIR" ]]; then
  echo "Creating $INSTALL_DIR..."
  sudo mkdir -p "$INSTALL_DIR"
fi

sudo curl -fsSL "$REPO" -o "$INSTALL_DIR/hatchbox"
sudo chmod +x "$INSTALL_DIR/hatchbox"

echo "Done! Run 'hatchbox --help' to get started."
