vim.g.mapleader = " "
vim.keymap.set("n","<leader>fe",vim.cmd.Ex)
vim.keymap.set("n","<leader>we",vim.cmd.noh)

vim.keymap.set("n", "<leader>tt", function()
    vim.cmd("sp")
    vim.cmd("terminal")
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>x', true, false, true), 'n', true)
end, { noremap = true, silent = true })


vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

change_by = 2 
vim.api.nvim_set_keymap('n', '+', string.format(':resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '_', string.format(':resize -%d<CR>',change_by), { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '>', string.format(':vertical resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<', string.format(':vertical resize -%d<CR>',change_by), { noremap = true, silent = true })
