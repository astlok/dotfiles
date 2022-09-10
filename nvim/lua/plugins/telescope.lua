require('telescope').setup {
    defaults = {
        initial_mode = "normal",
        file_ignore_patterns = {"node_modules", "vendor", ".git"}
    },
	 -- pickers = {
	 -- 	buffers = {
	 -- 		-- начинать в normal моде при открытии списка буферов
	 -- 		initial_mode = 'normal'
	 -- 	}
	 -- }
}

--require('telescope').load_extension("fzf")
--require('telescope').load_extension("git_worktree")

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)

