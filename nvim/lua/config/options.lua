local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Consider - as part of word
opt.iskeyword:append("-")

-- Disable swapfile
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Update time
opt.updatetime = 50

-- Complete options
opt.completeopt = "menuone,noselect"

-- Persistent undo
opt.undofile = true

-- 24-bit color
opt.termguicolors = true

-- Always show tabline
opt.showtabline = 2

-- Faster completion
opt.updatetime = 300
opt.timeoutlen = 300

-- Have a fixed column for the diagnostics to appear in
opt.signcolumn = "yes"
