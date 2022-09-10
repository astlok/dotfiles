require'bufferline'.setup{}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader>[', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>]', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader>,', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>.', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
-- Pin/unpin buffer
map('n', '<leader>pn', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
map('n', '<leader>p', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bp', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bcp', '<Cmd>BufferCloseAllButCurrent<CR>', opts)

--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
-- Magic buffer-picking mode
map('n', '<leader>p', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used


-- require('close_buffers').setup({
-- preserve_window_layout = { 'this' },
-- next_buffer_cmd = function(windows)
--   require('bufferline').cycle(1)
--   local bufnr = vim.api.nvim_get_current_buf()
--
--   for _, window in ipairs(windows) do
--     vim.api.nvim_win_set_buf(window, bufnr)
--   end
-- end,
-- })
--
-- vim.api.nvim_set_keymap(
-- 'n',
-- '<leader>th',
-- [[<CMD>lua require('close_buffers').delete({type = 'hidden'})<CR>]],
-- { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap(
-- 'n',
-- '<leader>tu',
-- [[<CMD>lua require('close_buffers').delete({type = 'nameless'})<CR>]],
-- { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap(
-- 'n',
-- '<leader>tc',
-- [[<CMD>lua require('close_buffers').delete({type = 'this'})<CR>]],
-- { noremap = true, silent = true }
-- )
-- vim.api.nvim_set_keymap(
-- 'n',
-- '<leader>to',
-- [[<CMD>lua require('close_buffers').delete({type = 'other'})<CR>]],
-- { noremap = true, silent = true }
-- )
--


