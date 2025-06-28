# NVim-Config 🚀

> **Actually Good Neovim Config That Won't Make You Cry**

```
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣶⣶⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀
⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀
```

s) |
🚀 Why Use This Config?

✅ Fast

Lazy-loading keeps startup under control

Minimal plugins with maximum utility

No gimmicks, no bloated dashboards

✅ Focused

Clean UI with just what you need: file tree, status line, LSP, formatter

Smart defaults like space as leader and 2-space indentation

Comes with the tools you actually use (not 12 colorschemes you never will)

🔧 Setup

Prerequisites

# Neovim 0.10+
# WSL, macOS, Linux all work

# Required tools
sudo apt install ripgrep nodejs npm git

Install

mv ~/.config/nvim ~/.config/nvim.backup  # optional

git clone https://github.com/yourname/nvim-config ~/.config/nvim

nvim

First launch installs plugins via Lazy.nvim. Give it a moment.

📦 Included Plugins

Plugin

Purpose

lazy.nvim

Plugin manager

catppuccin

One clean theme

neo-tree

File explorer

lualine

Status line

telescope

Fuzzy finder

nvim-treesitter

Syntax-aware highlighting

nvim-lspconfig

LSP support

mason.nvim

LSP installer

none-ls.nvim

Formatter / linter bridge

🧠 LSP Support

ensure_installed = {
  "lua_ls",     -- Lua
  "clangd",     -- C/C++
  "sqls"        -- SQL
}

Out of the box: hover docs, completion, diagnostics, go-to-definition.

🗂️ File Structure

~/.config/nvim/
├── init.lua
├── lua/
│   ├── plugins/
│   │   └── (one file per plugin)
│   └── options.lua

⌨️ Key Bindings

Key

Action

<leader>ff

Find files (Telescope)

<leader>fg

Search text (grep)

<leader>n

Toggle Neo-tree

<leader>gf

Format file

K

Hover docs

gd

Go to definition

<leader>ca

Code actions

🎨 UI

Catppuccin Mocha theme by default

Lualine for mode, file info, and LSP status

Nerd Font support out of the box


👏 Credits

ThePrimeagen

Folke for Lazy.nvim

Catppuccin for theme inspiration

And the entire Neovim community

“The best editor is the one that gets out of your way.” – Probably some wise dev

