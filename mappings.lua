-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
  -- local java_compiler = require('scripts.java-compiler')
  -- TODO: get importing lua scripts done
  -- vim.api.nvim_set_keymap('n', '<F6>', ':lua java_compiler.compileJavaProject()<CR>', { noremap = true, silent = true }),
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- Bind the function to a key mapping
    -- -- Open compiler
    -- vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true }),
    --
    -- -- Redo last selected option
    -- vim.api.nvim_set_keymap('n', '<S-F6>',
    --      "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    --   .. "<cmd>CompilerRedo<cr>",
    --  { noremap = true, silent = true }),
    --
    -- -- Toggle compiler results
    -- vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true }),
    --
    ["<leader>r"] = {
      ":cd %:h<cr>", desc = "CD to current file"
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
