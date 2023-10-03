local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space><Space>', builtin.find_files, {})
vim.keymap.set('n', '<Space>po', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>pg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>ph', builtin.help_tags, {})

