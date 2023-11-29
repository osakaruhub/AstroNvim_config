return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- some colorschemes
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim"},
  { import = "astrocommunity.colorscheme.nord-nvim"},
  { import = "astrocommunity.colorscheme.nightfox-nvim"}
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
