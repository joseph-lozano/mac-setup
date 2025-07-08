# Dotfiles

This directory contains dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each subdirectory represents a "package" that can be stowed independently:

- `zsh/` - Zsh configuration files
- `git/` - Git configuration files

## Usage

The install script automatically stows all packages in this directory. You can also manually stow individual packages:

```bash
# Stow all packages
cd dotfiles
stow -t ~ */

# Stow individual package
stow -t ~ zsh

# Unstow a package
stow -t ~ -D zsh
```

## Adding New Dotfiles

1. Create a new directory for your package (e.g., `nvim/`)
2. Recreate the directory structure as it should appear in your home directory
3. Add your configuration files
4. Run `stow -t ~ package-name` or re-run the install script

## Example

To add Neovim configuration:

```bash
mkdir -p dotfiles/nvim/.config/nvim
echo 'vim.opt.number = true' > dotfiles/nvim/.config/nvim/init.lua
stow -t ~ nvim
```

This will create a symlink from `~/.config/nvim/init.lua` to `dotfiles/nvim/.config/nvim/init.lua`.

## Customization

Edit the example configurations in this directory:

- Update `.gitconfig` with your name and email
- Modify `aliases.zsh` with your preferred aliases
- Add new packages as needed