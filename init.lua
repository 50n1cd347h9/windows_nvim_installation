vim.opt.runtimepath:append("~/AppData/Local/nvim/plugins/nvim-treesitter")
vim.opt.runtimepath:append("~/AppData/Local/nvim/plugins/kanagawa.nvim")
vim.opt.runtimepath:append("~/AppData/Local/nvim/plugins/vim-fern")

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('c', 'jj', '<Esc>')

vim.keymap.set('i', '[', '[]<LEFT>')
vim.keymap.set('i', '{', '{}<LEFT>')
vim.keymap.set('i', '(', '()<LEFT>')
vim.keymap.set('i', '\'', '\'\'<LEFT>')
vim.keymap.set('i', '\"', '\"\"<LEFT>')

vim.keymap.set('n', '<C-n>', ':Fern . -reveal=% -drawer -toggle -width=40<CR>')

vim.keymap.set('t', 'jj', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>N', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')

vim.opt.relativenumber = true
vim.opt.syntax = 'enable'
vim.opt.clipboard = "unnamedplus"
vim.opt.shell = 'bash'
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.cmd('colorscheme kanagawa')

require'nvim-treesitter.configs'.setup {
	ensure_installed = {"go", "c_sharp", "c", "cpp", "python", "vim", "yaml", "rust", "lua", "zig"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = true,
	highlight = {
		enable = true,              -- false will disable the whole extension
		disable = {},  -- list of language that will be disabled
	},
} 
