# AGENTS.md - Mac Setup Repository

## Project Type
This is a macOS setup automation repository containing a single bash script for installing development tools.

## Commands
- **Run setup**: `./install` or `bash install`
- **Test script**: `bash -n install` (syntax check)
- **No build/lint/test commands** - this is a simple bash script project

## Code Style Guidelines
- **Language**: Bash scripting
- **Shebang**: Use `#!/usr/bin/env bash`
- **Error handling**: Use `set -e` for strict error handling
- **Functions**: Define helper functions for reusable logic (e.g., `info()`, `install()`)
- **Function Organization**: Create separate functions for each logical grouping instead of using comment sections within functions
- **Conditionals**: Use `[[ ]]` for test conditions instead of `[ ]`
- **Variables**: Use double quotes around variables: `"$variable"`
- **Output**: Use descriptive info messages with consistent format: `info "message"`
- **Homebrew**: Check if packages exist before installing to avoid redundant operations
- **Comments**: Add comments for complex logic sections

## Architecture
- Single executable script (`install`) that handles macOS development environment setup
- Modular functions for different installation types (brew, cask)
- Automatic Homebrew installation if not present
- Idempotent operations (safe to run multiple times)