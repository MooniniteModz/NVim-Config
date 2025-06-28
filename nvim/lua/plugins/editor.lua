return {
  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 35,
          relativenumber = true,
        },
        renderer = {
          indent_markers = {
            enable = true,
          },
        },
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { ".DS_Store" },
        },
        git = {
          ignore = false,
        },
      })

      vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
      vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Find file in explorer" })
    end,
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "truncate" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      telescope.load_extension("fzf")

      local keymap = vim.keymap
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
      keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
      keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string" })
      keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
      keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
      keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help" })
      keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" })
      keymap.set("n", "<leader>gf", "<cmd>Telescope git_bcommits<cr>", { desc = "Git file commits" })
      keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })
      keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })
    end,
  },

  -- Which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")
      wk.setup()
      wk.register({
        ["<leader>"] = {
          f = { name = "Find" },
          g = { name = "Git" },
          h = { name = "Harpoon" },
          s = { name = "Split" },
          t = { name = "Tab" },
          e = { name = "Explorer" },
        },
      })
    end,
  },

  -- Harpoon (ThePrimeagen's favorite)
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "Add to Harpoon" })
      vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
      
      vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harpoon 1" })
      vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harpoon 2" })
      vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harpoon 3" })
      vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harpoon 4" })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon previous" })
      vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon next" })
    end,
  },

  -- Undotree
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree" })
    end,
  },

  -- Git integration
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gg", vim.cmd.Git, { desc = "Git status" })
    end,
  },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
      })
    end,
  },

  -- Comment
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    config = true,
  },

  -- Better escape
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        mapping = { "jk", "jj" },
        timeout = 200,
      })
    end,
  },
}
