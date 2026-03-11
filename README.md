# 🚀 Simple & Fast NeoVim Config (v4.2.0)

This setup is built to be **extremely fast** and easy to use. It uses **lazy loading** to make sure your editor starts instantly and only runs what you need, when you need it.

---

### Why This Works
* **Fast Starts** – Plugins only load when you actually use them.
* **No Bloat** – We removed all the useless stuff that slows you down.
* **Easy Moving** – Built for people who need to switch between files quickly.

### Basic Settings
```lua
-- Simple layout settings
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

-- Space bar is your main helper key
vim.g.mapleader = " "
