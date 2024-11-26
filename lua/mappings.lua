vim.keymap.set( 'i', "kj", "<ESC>", { noremap = true } )
vim.keymap.set( 't', "kj", "<C-\\><C-n>", { noremap = true } )

vim.keymap.set('n', '|', ':vsplit<CR>', {desc = 'Remap split window'})

--remap window navigation
vim.keymap.set( 'n', '<C-h>', '<C-w>h' )
vim.keymap.set( 'n', '<C-j>', '<C-w>j' )
vim.keymap.set( 'n', '<C-k>', '<C-w>k' )
vim.keymap.set( 'n', '<C-l>', '<C-w>l' )

--nvim tree
vim.keymap.set( 'n', '<leader>n', require('nvim-tree.api').tree.toggle )

--nvim-telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })
