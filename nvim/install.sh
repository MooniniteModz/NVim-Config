#!/bin/bash

# Neovim/LazyVim Installation Script

echo "🚀 Installing Neovim and LazyVim configuration..."

# Backup existing config
if [ -d "$HOME/.config/nvim" ]; then
    echo "📦 Backing up existing Neovim config..."
    mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Create config directory
mkdir -p "$HOME/.config/nvim"

# Install Neovim (if not installed)
if ! command -v nvim &> /dev/null; then
    echo "📥 Installing Neovim..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
        sudo rm -rf /opt/nvim
        sudo tar -C /opt -xzf nvim-linux64.tar.gz
        sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
        rm nvim-linux64.tar.gz
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install neovim
    fi
fi

# Install dependencies
echo "📥 Installing dependencies..."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt update
    sudo apt install -y ripgrep fd-find python3-pip nodejs npm build-essential
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install ripgrep fd node python3
fi

# Install language servers
echo "📥 Installing language servers..."
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g @tailwindcss/language-server
npm install -g pyright
pip3 install black isort

# Install formatters
npm install -g prettier
npm install -g eslint_d
pip3 install stylua

echo "✅ Installation complete!"
echo "📝 Now copy the configuration files to ~/.config/nvim/"
echo "🚀 Start Neovim with 'nvim' and LazyVim will install plugins automatically"
```

---

# PowerShell Installation Script (install.ps1)
```powershell
# Neovim/LazyVim Installation Script for Windows

Write-Host "🚀 Installing Neovim and LazyVim configuration..." -ForegroundColor Cyan

# Backup existing config
$nvimConfig = "$env:LOCALAPPDATA\nvim"
if (Test-Path $nvimConfig) {
    Write-Host "📦 Backing up existing Neovim config..." -ForegroundColor Yellow
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    Move-Item $nvimConfig "$nvimConfig.backup.$timestamp"
}

# Create config directory
New-Item -ItemType Directory -Path $nvimConfig -Force | Out-Null

# Install Neovim using Scoop
if (!(Get-Command nvim -ErrorAction SilentlyContinue)) {
    Write-Host "📥 Installing Neovim..." -ForegroundColor Yellow
    
    # Install Scoop if not present
    if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
        Write-Host "Installing Scoop..." -ForegroundColor Yellow
        Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
        irm get.scoop.sh | iex
    }
    
    scoop install neovim
}

# Install dependencies
Write-Host "📥 Installing dependencies..." -ForegroundColor Yellow
scoop install ripgrep fd nodejs python

# Install language servers
Write-Host "📥 Installing language servers..." -ForegroundColor Yellow
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g @tailwindcss/language-server
npm install -g pyright
pip install black isort

# Install formatters
npm install -g prettier
npm install -g eslint_d
pip install stylua

# Install C# tools
Write-Host "📥 Installing C# tools..." -ForegroundColor Yellow
dotnet tool install -g csharpier
scoop install omnisharp

Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host "📝 Now copy the configuration files to $nvimConfig" -ForegroundColor Cyan
Write-Host "🚀 Start Neovim with 'nvim' and LazyVim will install plugins automatically" -ForegroundColor Cyan
```

---

# Quick Commands Reference

## Navigation
- `<space>pv` - File explorer (netrw)
- `<space>ff` - Find files
- `<space>fs` - Find string (grep)
- `<space>fb` - Find buffers
- `<space>fh` - Find help

## Harpoon (Quick file navigation)
- `<space>ha` - Add file to Harpoon
- `<space>hh` - Open Harpoon menu
- `<space>h1-4` - Jump to Harpoon file 1-4

## Git
- `<space>gg` - Git status (Fugitive)
- `<space>gc` - Git commits
- `<space>gb` - Git branches

## LSP
- `gd` - Go to definition
- `K` - Hover documentation
- `<space>vrn` - Rename
- `<space>vca` - Code action
- `[d` / `]d` - Previous/Next diagnostic

## Editing
- `<space>p` - Paste without yanking
- `<space>y` - Yank to system clipboard
- `<space>d` - Delete without yanking
- `<space>s` - Replace word under cursor
- `gcc` - Comment line
- `gc` - Comment selection

## Windows/Tabs
- `<space>sv` - Split vertically
- `<space>sh` - Split horizontally
- `<space>sx` - Close split
- `<C-h/j/k/l>` - Navigate splits
