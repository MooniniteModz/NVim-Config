return {
  -- Tokyonight (default)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Alternative: Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
      })
    end,
  },

  -- Alternative: Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        dark_variant = "moon",
        disable_background = true,
      })
    end,
  },
}
