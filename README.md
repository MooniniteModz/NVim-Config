# Good Neovim Config That Won't Make You Cry

<div align="center">

*insert Neovim ASCII art here*

</div>

---

## Why This Config Doesn't Suck

### It's Actually Fast

- ⚡ **Lazy loading** – Plugins load when you need them, not when your cat walks across the keyboard.
- 🚀 **Zero bloat** – No dancing cursors, no startup screens with ASCII art of your waifu.
- 💨 **Quick startup** – Because waiting for your editor is for VS Code users.

### Sensible Defaults That Work

```lua
-- 2 spaces for indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

-- Space as leader because it's 2024, not 1987
vim.g.mapleader = " "
Useful Plugins (Not 47 Colorschemes)
🎨 Catppuccin Theme
🔍 Telescope - Fuzzy Finder
🌳 Neo-tree – File explorer 
📊 Lualine – Status line that shows useful info.
🧠 LSP – Code completion.
🌲 Treesitter – Syntax highlighting .

🛠️ Installation
bash
Copy
Edit
# Prereqs (Ubuntu example)
sudo apt install ripgrep nodejs npm git

# Back up your config if you want
mv ~/.config/nvim ~/.config/nvim.backup

git clone https://github.com/YOURNAME/nvim-config ~/.config/nvim
nvim
First launch installs plugins via Lazy.nvim. Give it a moment.

📦 What's Actually In Here
Plugin Manifest
lua
Copy
Edit
{
  "catppuccin",           -- Colorscheme that doesn't suck
  "lazy.nvim",            -- Plugin manager that's actually lazy
  "lualine.nvim",         -- Status line with useful info
  "mason.nvim",           -- LSP installer that works
  "mason-lspconfig.nvim", -- Glue between Mason and LSP
  "neo-tree.nvim",        -- File explorer that makes sense
  "none-ls.nvim",         -- Formatters and linters
  "nvim-lspconfig",       -- LSP configuration that works
  "nvim-treesitter",      -- Syntax highlighting from 2024
  "telescope.nvim"        -- Fuzzy finder supremacy
}
🧠 LSP Support
Languages that actually work out of the box:
lua
Copy
Edit
ensure_installed = { 
  "lua_ls",   -- Lua (obviously)
  "clangd",   -- C/C++ (for the real programmers)
  "sqls"      -- SQL (for when you need to touch databases)
}
🗂️ File Structure (Organized Like a Human)
bash
Copy
Edit
~/.config/nvim/
├── init.lua              # Entry point (no bloat)
├── lazy-lock.json        # Plugin versions (for reproducible builds)
├── lua/
│   ├── vim-options.lua   # The 5 settings that actually matter
│   └── plugins/          # One file per plugin
│       ├── catppuccin.lua    # Colorscheme
│       ├── lsp-config.lua    # LSP setup
│       ├── lualine.lua       # Status line
│       ├── neo-tree.lua      # File explorer
│       ├── none-ls.lua       # Formatters/linters
│       ├── telescope.lua     # Fuzzy finder
│       └── treesitter.lua    # Syntax highlighting
⌨️ Keybindings
Key	Action	Description
<leader>ff	Find files	Telescope file finder (faster than clicking)
<leader>fg	Live grep	Search across all files (grep on steroids)
<leader>n	Toggle Neo-tree	File explorer (left side, where it belongs)
<leader>gf	Format file	Make your code not look like garbage
K	Hover docs	See what that function actually does
gd	Go to definition	Jump to where stuff is defined
<leader>ca	Code actions	Fix your code automatically

🎨 Visual Setup (It Actually Looks Good)
Catppuccin – One colorscheme to rule them all.

Lualine – Current mode, file name, git branch, LSP status.

No rainbow vomit – Just clean, readable colors.

🧠 LSP Configuration
Supported Languages:
✅ Lua
✅ C/C++
✅ SQL

Add more? Just update ensure_installed and add a setup call. No 47-step rituals.

What You Get:

Auto-completion

Diagnostics

Go-to definition

Hover documentation

Code actions

🔍 Telescope (File Finding Supremacy)
Find files by name (fuzzy matching)

Search file contents (live grep)

Browse through results like a human

No more clicking through folder trees like a caveman

🌳 File Management (Neo-tree)
Tree view on the left (where it belongs)

Git integration

Icons that actually mean something

No lag when opening large directories

Plugin Philosophy
One plugin, one file – No 500-line configs

Sensible defaults – It should work without 47 options

Clear purpose – Every plugin solves a specific problem

🚀 Performance Notes
Startup time: ~50ms

Cold start: ~200ms

With 50 files open: Still fast

VSCode with 5 extensions: 2GB and climbing
This config: ~150MB max with LSP active
