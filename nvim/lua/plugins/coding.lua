return {
  -- Copilot
  {
    "github/copilot.vim",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<C-L>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },

  -- Better diagnostics list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },
      { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace diagnostics" },
      { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document diagnostics" },
      { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix list" },
      { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Location list" },
    },
  },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPost", "BufNewFile" },
    config = true,
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
      { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    },
  },

  -- Folding
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      })
    end,
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = {
        backdrop = 0.95,
        width = 120,
        height = 1,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
      },
    },
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
  },

  -- Highlight other uses of word
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      delay = 200,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { "lsp" },
      },
    },
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },

  -- Better quickfix
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    opts = {},
  },

  -- Session management
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      })
    end,
  },
}
