require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

local map = vim.api.nvim_set_keymap
local opts = {silent = true}

map('n', '<leader>/', '<cmd>HopPattern<CR>', opts)
map('n', '<leader>w', '<cmd>HopWord<CR>', opts)

-- vim.cmd[[
-- map <Leader>w <cmd>HopWord<CR>
-- map <Leader>/ <cmd>HopPattern<CR>
-- ]]

-- vim.api.nvim_set_keymap("x", "s", ":HopChar1<cr>", { silent = true })
-- vim.api.nvim_set_keymap("v", "s", ":HopChar1<cr>", { silent = true })
-- vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
-- vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })

