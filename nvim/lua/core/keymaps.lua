vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.vimwiki_global_ext = 0

vim.opt.timeoutlen = 500

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.linebreak=true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.filetype = "on"

-- No keymaps starting with <leader>w or <leader>p --
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>k', ':bn<CR>')
vim.keymap.set('n', '<leader>j', ':bp<CR>')
vim.keymap.set('n', '<leader>d', ':bd<CR>')
vim.keymap.set('n', '<leader>c', ':let @/=""<CR>')
vim.keymap.set('n', '<leader>t', ':set tags=./tags,tags;<CR>')
vim.keymap.set('n', '<leader>g', ':! g++ -std=c++20 -Wall -Wextra -pedantic -o "%:t:r" "%"<CR>')

vim.keymap.set('n', '<leader>src', ':source $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>vi', ':tabe ~/.config/nvim<CR>')

vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>')
