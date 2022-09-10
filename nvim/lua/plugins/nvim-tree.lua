require("nvim-tree").setup({
  sort_by = "case_sensitive",
  open_on_setup = true,
  open_on_setup_file = true,
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', opts)

