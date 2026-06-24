#!/bin/bash
# Install zsh-setup: symlink config files into $HOME
# Usage: ./install.sh [--dry-run]

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
DRY_RUN=false

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=true
fi

link() {
  local src="$1" dst="$2"
  if $DRY_RUN; then
    echo "Would link: $src -> $dst"
  else
    ln -sf "$src" "$dst"
    echo "Linked: $src -> $dst"
  fi
}

echo "==> Installing zsh-setup from $REPO_DIR"
echo ""

# .zshrc
link "$REPO_DIR/zshrc" "$HOME/.zshrc"

# .config/starship.toml
mkdir -p "$HOME/.config"
link "$REPO_DIR/.config/starship.toml" "$HOME/.config/starship.toml"

# .config/starship.zsh
link "$REPO_DIR/.config/starship.zsh" "$HOME/.config/starship.zsh"

echo ""
echo "==> Done. Restart your shell or run: source ~/.zshrc"
