local utils = require("exec.utils")

function execCurl()
    local command = utils.getCurrentParagraph()

    command = command .. ' | jq .'

    vim.cmd('set splitright | vnew | set filetype=sh | read !' .. command)

    -- local Terminal = require('toggleterm.terminal').Terminal
    -- local run = Terminal:new({
    --     cmd = command,
    --     hidden = false,
    --     direction = "float",
    --     close_on_exit = false,
    --     on_open = function(term)
    --         vim.api.nvim_buf_set_keymap(term.bufnr, "t", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    --     end,
    -- })
    --
    -- run:toggle()
    --
end

utils.keymap("n", "<S-e>", "<cmd>lua execCurl()<CR>")

