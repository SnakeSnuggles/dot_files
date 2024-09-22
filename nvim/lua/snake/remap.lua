vim.g.mapleader = " "
vim.keymap.set("n","<leader>fe",vim.cmd.Ex)
vim.keymap.set("n","<leader>we",vim.cmd.noh)

vim.keymap.set("n","<leader>tt",vim.cmd.terminal)


vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

change_by = 2 
vim.api.nvim_set_keymap('n', '+', string.format(':resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '_', string.format(':resize -%d<CR>',change_by), { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '>', string.format(':vertical resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<', string.format(':vertical resize -%d<CR>',change_by), { noremap = true, silent = true })
