#!/usr/bin/env bash

# Cursor Extensions Installation Script
# Run this after stowing the cursor dotfiles

set -e

info() {
  echo "[INFO] $1"
}

install_extension() {
  local extension="$1"
  if cursor --list-extensions | grep -q "^$extension$"; then
    info "$extension already installed"
  else
    info "Installing $extension..."
    cursor --install-extension "$extension"
  fi
}

# Check if cursor command is available
if ! command -v cursor >/dev/null 2>&1; then
  echo "Error: cursor command not found. Make sure Cursor is installed and the CLI is set up."
  echo "You can set up the CLI by opening Cursor and running: Command Palette > Shell Command: Install 'cursor' command in PATH"
  exit 1
fi

info "Installing Cursor extensions..."

# Language Support
install_extension "bradlc.vscode-tailwindcss"
install_extension "ms-vscode.vscode-typescript-next"
install_extension "jakebecker.elixir-ls"
install_extension "phoenixframework.phoenix"

# Frameworks & Tools
install_extension "esbenp.prettier-vscode"
install_extension "dbaeumer.vscode-eslint"

# Git & Version Control

# Productivity
install_extension "formulahendry.auto-rename-tag"
install_extension "christian-kohler.path-intellisense"
install_extension "usernamehw.errorlens"
install_extension "gruntfuggly.todo-tree"
install_extension "coenraads.bracket-pair-colorizer-2"
install_extension "oderwat.indent-rainbow"
install_extension "alefragnani.bookmarks"
install_extension "naumovs.color-highlight"
install_extension "kisstkondoros.vscode-gutter-preview"
install_extension "shd101wyy.markdown-preview-enhanced"

# Themes & Icons
install_extension "catppuccin.catppuccin-vsc"
install_extension "catppuccin.catppuccin-vsc-icons"

# File Types
install_extension "bungcip.better-toml"

info "Extension installation complete!"
info "Restart Cursor to ensure all extensions are properly loaded."