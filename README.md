 Good Neovim Config That Won't Make You Cry
⠀⠀

Why This Config Doesn't Suck
It's Actually Fast
⚡ Lazy loading - Plugins load when you need them, not when your cat walks across the keyboard
🚀 Zero bloat - No dancing cursors, no startup screens with ASCII art of your waifu
💨 Quick startup - Because waiting for your editor is for VS Code users
Sensible Defaults That Work
-- 2 spaces for indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

-- Space as leader because it's 2024, not 1987
vim.g.mapleader = " "
Actually Useful Plugins (Not 47 Colorschemes)
🎨 Catppuccin - One good colorscheme that doesn't burn your retinas
🔍 Telescope - Find files faster than you can complain about JavaScript
🌳 Neo-tree - File explorer that doesn't make you want to rm -rf your config
📊 Lualine - Status line that shows useful info, not your horoscope
🧠 LSP - Code completion that actually completes your code
🌲 Treesitter - Syntax highlighting from this decade
🛠️ Installation (Don't Mess This Up)





📦 What's Actually In Here
Plugin Breakdow
-- Plugin manifest
{
  "catppuccin":           -- Colorscheme that doesn't suck
  "lazy.nvim":            -- Plugin manager that's actually lazy
  "lualine.nvim":         -- Status line with useful info
  "mason.nvim":           -- LSP installer that works
  "mason-lspconfig.nvim": -- Glue between Mason and LSP
  "neo-tree.nvim":        -- File explorer that makes sense
  "none-ls.nvim":         -- Formatters and linters
  "nvim-lspconfig":       -- LSP configuration that works
  "nvim-treesitter":      -- Syntax highlighting from 2024
  "telescope.nvim":       -- Fuzzy finder supremacy
}
LSP Support (The Important Part)
-- Languages that actually work out of the box:
ensure_installed = { 
  "lua_ls",   -- Lua (obviously)
  "clangd",   -- C/C++ (for the real programmers)
  "sqls"      -- SQL (for when you need to touch databases)
}
File Structure (Organized Like a Human)
~/.config/nvim/
├── init.lua              # Entry point (11 lines, no bloat)
├── lazy-lock.json        # Plugin versions (for reproducible builds)
├── lua/
│   ├── vim-options.lua   # The 5 settings that actually matter
│   └── plugins/          # One file per plugin (revolutionary concept)
│       ├── catppuccin.lua    # Colorscheme
│       ├── lsp-config.lua    # LSP setup
│       ├── lualine.lua       # Status line
│       ├── neo-tree.lua      # File explorer
│       ├── none-ls.lua       # Formatters/linters
│       ├── telescope.lua     # Fuzzy finder
│       └── treesitter.lua    # Syntax highlighting


⌨️ Keybindings
Leader Key
-- Space as leader because your thumb is already there
vim.g.mapleader = " "
File Operations (The Essential Stuff)
Key	Action	Description
<leader>ff	Find files	Telescope file finder (faster than clicking)
<leader>fg	Live grep	Search across all files (grep on steroids)
<leader>n	Toggle Neo-tree	File explorer (left side, where it belongs)
<leader>gf	Format file	Make your code not look like garbage
LSP Keybindings (Actually Useful)
Key	Action	Description
Ih	Hover documentation	See what that function actually does
Iu	Go to definition	Jump to where stuff is defined
<leader>ca	Code actions	Fix your code automatically

🎨 Visual Setup (It Actually Looks Good)
Catppuccin Theme
-- One colorscheme to rule them all
-- No theme switching every 5 minutes
-- No rainbow vomit
-- Just clean, readable colors
Lualine Status Bar
-- Shows you:
-- - Current mode (because you forgot again)
-- - File name (because files have names)
-- - Git branch (because version control matters)
-- - LSP status (so you know when things break)
-- 
-- Doesn't show you:
-- - The weather
-- - Your horoscope  
-- - How many commits you've made today
-- - Whether Mercury is in retrograde
🧠 LSP Configuration
Config Languages
-- Languages with first-class support:
✅ Lua        -- Obviously (it's Neovim)
✅ C/C++      -- For the systems programmers
✅ SQL        -- Database queries

-- Adding more languages:
-- 1. Add to ensure_installed in lsp-config.lua
-- 2. Add setup call: lspconfig.LANGUAGE.setup {}
-- 3. That's it. No 47-step configuration ritual.

What You Get
Auto-completion that actually completes
Diagnostics that point to real problems
Go-to definition that goes to the actual definition
Hover documentation that's actually helpful
Code actions that fix your terrible code

🔍 Telescope (File Finding Supremacy)
What It Does
-- Find files by name (fuzzy matching)
-- Search file contents (live grep)
-- Browse through results like a human
-- No more clicking through folder trees like a caveman
Usage
-- <leader>ff - Find files
-- Type part of filename, get results instantly
-- Way faster than your mouse, I don't care what you think

-- <leader>fg - Live grep  
-- Search for text across your entire project
-- Regex support because we're not animals

🌳 File Management (Neo-tree)
Features
Tree view on the left (where it belongs)
Git integration (see your dirty files)
Icons that actually mean something
No lag when opening large directories
Usage
-- <leader>n - Toggle file tree
-- Navigate with hjkl like a vim user
-- Press enter to open files
-- It's not rocket science

Plugin Philosophy
One plugin, one file - No 500-line plugin configurations
Sensible defaults - It should work without 47 configuration options
Clear purpose - Every plugin should solve a specific problem

Code Style
-- Use 2 spaces for indentation
-- Keep functions under 20 lines
-- Comment why, not what
-- If it needs a paragraph of comments, it's too complex

🚀 Performance Notes
Startup Time
Average startup time: ~50ms
Cold start (first time): ~200ms
With 50 files open: Still fast

Compare that to VSCode: "Loading..." for 3 seconds
Memory Usage
Idle: ~50MB
With LSP active: ~150MB
With large project: ~300MB

VSCode with 5 extensions: 2GB and climbing

🙏 Acknowledgments
ThePrimeagen - For teaching us that Neovim is superior to everything else
TypeCraft - for his extensive collection of "How To Config" NeoVim videos.
Folke - For Lazy.nvim (the plugin manager that actually works)
The Neovim Team - For making an editor that doesn't suck
Everyone who contributes - You make this better than one person ever could


🎯 Final Words
This config isn't perfect. But it's simple, fast, and gets out of your way so you can actually write code instead of configuring your editor for 6 hours.




"The best editor is the one that gets out of your way" - Some wise programmer, probably
