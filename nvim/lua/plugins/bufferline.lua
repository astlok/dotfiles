local ok, bufline = pcall(require, "bufferline")

bufline.setup({
    options = {
        diagnostics = "nvim_lsp",
        show_tab_indicators = true,
    },
    -- highlights = {
    -- --     separator = {
    -- --         bg = '#F1F1F1'
    -- --     },
    -- --     close_button = {
    -- --         bg = '#F1F1F1'
    -- --     },
    -- --     background = {
    -- --         bg = '#F1F1F1',
    -- --     },
    --     -- fill = {
    --     --     bg = '#F5F7F9',
    --     -- },
    -- }
})

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
map('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', opts)
map('n', '<leader>r', '<cmd>BufferLinePickClose<CR>', opts)
map('n', '<leader>p', '<cmd>BufferLinePick<CR>', opts)

