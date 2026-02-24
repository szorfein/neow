# Neow

Aesthetic Neovim configuration focus to be "intuitive" and fast.

## Aesthetic

- [Catppuccin](https://github.com/catppuccin/nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)

## Intuitive

- Auto remove trailing whitespace when save.
- Format code on save with [conform](https://github.com/stevearc/conform.nvim).

## Install

    git clone https://github.com/szorfein/neow ~/.config/nvim

## Configuration

Add a colorscheme (e.g mocha from [catppuccin.nvim](https://github.com/catppuccin/nvim) or create one):

    curl -o ~/.config/nvim/lua/colors.lua -sSL https://github.com/catppuccin/nvim/raw/refs/heads/main/lua/catppuccin/palettes/mocha.lua

Add config for the top bar or a classic bottom:

    curl -o ~/.config/nvim/lua/ui/heirline.lua -sSL https://github.com/szorfein/dotfiles/raw/refs/heads/main/swayfx-themes/vibe/.config/nvim/lua/ui/heirline.lua

You can customize any of theses files to matches with your need.
