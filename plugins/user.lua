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
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    cmd = {"TodoQuickFix"},
    keys = {
      { "<Leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope"},
    },
  },
  { -- scientific annotation
    'jbyuki/nabla.nvim',
  },
  { -- tagbar
    'majutsushi/tagbar'
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
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require("drop").setup()
    end
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
  { -- discord Rich-Presence
    'andweeb/presence.nvim',
    opts = {},
    event = "VeryLazy",
  },
  { -- learn neovim  
     "m4xshen/hardtime.nvim",
     dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
     opts = {}
  },
  -- },
}
