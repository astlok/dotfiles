require("gopher").setup {
  commands = {
    go = "go",
    gomodifytags = "gomodifytags",
    gotests = "~/go/bin/gotests", -- also you can set custom command path
    impl = "impl",
    iferr = "iferr",
  },
}

local map = vim.api.nvim_set_keymap
local opts = {silent = true}

map('n', '<leader>rr', '<cmd>GoIfErr<CR>', opts)

