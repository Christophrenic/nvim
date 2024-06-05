vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true


vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')


vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR', { noremap = true, silent = true})
