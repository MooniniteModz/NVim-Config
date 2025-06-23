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

**No React Andy's here...**

This isn't your typical 847-plugin Neovim config that takes longer to boot than Windows Vista. This is a **LEAN, MEAN, CODING VIM CONFIG ** that actually helps you code instead of spending 3 hours configuring your status line to show the phases of the moon.

---

## Why This Config Doesn't Suck

### It's Actually Fast
- ⚡ **Lazy loading** - Plugins load when you need them, not when your cat walks across the keyboard
- 🚀 **Zero bloat** - No dancing cursors, no startup screens with ASCII art of your waifu
- 💨 **Quick startup** - Because waiting for your editor is for VS Code users

### Sensible Defaults That Work
```lua
-- 2 spaces for indentation because we're not barbarians
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

-- Space as leader because it's 2024, not 1987
vim.g.mapleader = " "
```

### Actually Useful Plugins (Not 47 Colorschemes)
- 🎨 **Catppuccin** - One good colorscheme that doesn't burn your retinas
- 🔍 **Telescope** - Find files faster than you can complain about JavaScript
- 🌳 **Neo-tree** - File explorer that doesn't make you want to `rm -rf` your config
- 📊 **Lualine** - Status line that shows useful info, not your horoscope
- 🧠 **LSP** - Code completion that actually completes your code
- 🌲 **Treesitter** - Syntax highlighting from this decade

---

## 🛠️ Installation (Don't Mess This Up)

### Prerequisites (The Bare Minimum)

```bash
# You need Neovim 0.8+ 
# If you're still on 0.7, what are you even doing?

# macOS (the objectively superior development platform)
brew install neovim

# Ubuntu/Debian (perfectly acceptable choice)
sudo apt install neovim

# Arch (btw I use arch)
sudo pacman -S neovim

# Windows
# Please just use WSL. I'm begging you.
```

### Required Dependencies (Actually Required)

```bash
# Ripgrep - because regular grep is for masochists
# Node.js - unfortunately we live in a JavaScript world
# Git - if you don't have git, we need to have a serious talk

# macOS
brew install ripgrep node git

# Ubuntu/Debian
sudo apt install ripgrep nodejs npm git

# Arch
sudo pacman -S ripgrep nodejs npm git
```

### Installation (The Easy Part)

```bash
# Back up your existing config (if you have one worth backing up)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this masterpiece
git clone https://github.com/MooniniteModz/NVim-Config.git ~/.config/nvim

# Launch Neovim
nvim
```

**First launch:** It's gonna install plugins automatically via Lazy.nvim. Don't panic. This is normal. Grab some coffee (good coffee, not that Folgers garbage).

---

## 📦 What's Actually In Here

### Plugin Breakdown (The Good Stuff)

```lua
-- Plugin manifest (locked versions for stability)
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
```

### LSP Support (The Important Part)
```lua
-- Languages that actually work out of the box:
ensure_installed = { 
  "lua_ls",   -- Lua (obviously)
  "clangd",   -- C/C++ (for the real programmers)
  "sqls"      -- SQL (for when you need to touch databases)
}
```

### File Structure (Organized Like a Human)
```
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
```

---

## ⌨️ Keybindings (The Ones You'll Actually Use)

### Leader Key
```lua
-- Space as leader because your thumb is already there
vim.g.mapleader = " "
```

### File Operations (The Essential Stuff)
| Key | Action | Description |
|-----|--------|-------------|
| `<leader>ff` | Find files | Telescope file finder (faster than clicking) |
| `<leader>fg` | Live grep | Search across all files (grep on steroids) |
| `<leader>n` | Toggle Neo-tree | File explorer (left side, where it belongs) |
| `<leader>gf` | Format file | Make your code not look like garbage |

### LSP Keybindings (Actually Useful)
| Key | Action | Description |
|-----|--------|-------------|
| `Ih` | Hover documentation | See what that function actually does |
| `Iu` | Go to definition | Jump to where stuff is defined |
| `<leader>ca` | Code actions | Fix your code automatically |

**Note:** Yeah, `Ih` and `Iu` are weird keybindings. We'll fix that later. Or you can fix it and submit a PR like a chad.

---

## 🎨 Visual Setup (It Actually Looks Good)

### Catppuccin Theme
```lua
-- One colorscheme to rule them all
-- No theme switching every 5 minutes
-- No rainbow vomit
-- Just clean, readable colors
```

### Lualine Status Bar
```lua
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
```

---

## 🧠 LSP Configuration (The Brain)

### Supported Languages
```lua
-- Languages with first-class support:
✅ Lua        -- Obviously (it's Neovim)
✅ C/C++      -- For the systems programmers
✅ SQL        -- Database queries

-- Adding more languages:
-- 1. Add to ensure_installed in lsp-config.lua
-- 2. Add setup call: lspconfig.LANGUAGE.setup {}
-- 3. That's it. No 47-step configuration ritual.
```

### What You Get
- **Auto-completion** that actually completes
- **Diagnostics** that point to real problems
- **Go-to definition** that goes to the actual definition
- **Hover documentation** that's actually helpful
- **Code actions** that fix your terrible code

---

## 🔍 Telescope (File Finding Supremacy)

### What It Does
```lua
-- Find files by name (fuzzy matching)
-- Search file contents (live grep)
-- Browse through results like a human
-- No more clicking through folder trees like a caveman
```

### Usage
```lua
-- <leader>ff - Find files
-- Type part of filename, get results instantly
-- Way faster than your mouse, I don't care what you think

-- <leader>fg - Live grep  
-- Search for text across your entire project
-- Regex support because we're not animals
```

---

## 🌳 File Management (Neo-tree)

### Features
- **Tree view** on the left (where it belongs)
- **Git integration** (see your dirty files)
- **Icons** that actually mean something
- **No lag** when opening large directories

### Usage
```lua
-- <leader>n - Toggle file tree
-- Navigate with hjkl like a vim user
-- Press enter to open files
-- It's not rocket science
```

---

## 🛠️ Development (For Contributors)

### Adding New Plugins
```lua
-- 1. Create new file in lua/plugins/
-- 2. Return plugin spec:
return {
  "author/plugin-name",
  config = function()
    -- Setup goes here
  end
}

-- 3. Restart nvim
-- 4. Plugin installs automatically
-- 5. No need to run :PlugInstall like it's 2015
```

### Plugin Philosophy
- **One plugin, one file** - No 500-line plugin configurations
- **Sensible defaults** - It should work without 47 configuration options
- **Clear purpose** - Every plugin should solve a specific problem
- **No redundancy** - We don't need 3 file explorers

### Code Style
```lua
-- Use 2 spaces for indentation
-- Keep functions under 20 lines
-- Comment why, not what
-- If it needs a paragraph of comments, it's too complex
```

---

## 🚀 Performance Notes

### Startup Time
```
Average startup time: ~50ms
Cold start (first time): ~200ms
With 50 files open: Still fast

Compare that to VSCode: "Loading..." for 3 seconds
```

### Memory Usage
```
Idle: ~50MB
With LSP active: ~150MB
With large project: ~300MB

VSCode with 5 extensions: 2GB and climbing
```

---


## 🙏 Acknowledgments

- **ThePrimeagen** - For teaching us that Neovim is superior to everything else
- **Folke** - For Lazy.nvim (the plugin manager that actually works)
- **The Neovim Team** - For making an editor that doesn't suck
- **Everyone who contributes** - You make this better than one person ever could

---

## 🎯 Final Words

Look, this config isn't perfect. But it's **simple**, **fast**, and **gets out of your way** so you can actually write code instead of configuring your editor for 6 hours.

If you want something more complex, go use an IDE. If you want something that works and makes you productive, NeoVim is end-game.


---

<div align="center">


*"The best editor is the one that gets out of your way" - Some wise programmer, probably*

</div>
