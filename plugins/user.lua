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
    event = "VimEnter",
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { -- Database
    'tpope/vim-dadbod',
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
      --[[ "abenz1267/nvim-databasehelper", ]]
    },
    config = function()
      require("config.dadbod").setup()
    end,
    cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
  },
  {
    'nanotee/sqls.nvim',
    module = { "sqls" },
    cmd = {
      "SqlsExecuteQuery",
      "SqlsExecuteQueryVertical",
      "SqlsShowDatabases",
      "SqlsShowSchemas",
      "SqlsShowConnections",
      "SqlsSwitchDatabase",
      "SqlsSwitchConnection",
    },
  },
  {
    'dinhhuy258/vim-database',
    cmd = { "VDToggleDatabase", "VDToggleQuery", "VimDatabaseListTablesFzf" },
  },
  { -- nvim-jdtls
    'mfussenegger/nvim-jdtls',
  },
  { -- transparent.nvim
    'xiyaowong/transparent.nvim',
    config = function()
      require("transparent").setup({ -- Optional, you don't have to run setup.
        groups = { -- table: default groups
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = { 'NvimTreeNormal', }, -- table: additional groups that should be cleared
        exclude_groups = { 'NormalFloat', }, -- table: groups you don't want to clear
      })
    end,
    event = "VimEnter",
  },
  { -- feline (statusbar)
    'feline-nvim/feline.nvim',
    config = function()
      require('feline').setup()
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
    "osakaruhub/compiler.nvim",
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
  { -- learn neovim
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {}
  },
}
