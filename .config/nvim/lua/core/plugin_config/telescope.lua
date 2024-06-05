
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>')


require('telescope').setup{
	pickers = {
		find_files = {
			theme = "dropdown",
		}
	}
}

