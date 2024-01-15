return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>lc", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
  -- {
  --   "SmiteshP/nvim-navic",
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   require("neoconf").setup()
  -- },
  { -- learn vim-movements
    'ThePrimeagen/vim-be-good',
    event = "VeryLazy"
  },
  -- { -- indentations
  --   'lukas-reineke/indent-blankline.nvim',
  --   main = "ibl",
  --   opts = {}
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    cmd = { "TodoQuickFix" },
    keys = {
      { "<Leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require("project_nvim").setup {

      }
    end,
    event = "VeryLazy",
  },
  { -- tagbar
    'majutsushi/tagbar',
    event = "VimEnter"
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { -- nvim-jdtls
    'mfussenegger/nvim-jdtls',
  },
  { -- feline (statusbar)
    'feline-nvim/feline.nvim',
    config = function()
      require('feline').setup()
    end,
  },
  { -- screensaver
    "tamton-aquib/zone.nvim",
    config = function()
      require("zone").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  { -- compiler
    "Zeioth/compiler.nvim",
    cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  { -- task runner
    "stevearc/overseer.nvim",
    commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },
  { -- discord Rich-Presence
    'andweeb/presence.nvim',
    opts = {},
    event = 'VimEnter',
  },
  { -- learn neovim
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {}
  },
}
