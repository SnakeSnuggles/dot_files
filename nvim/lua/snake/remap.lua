vim.g.mapleader = " "
vim.keymap.set("n","<leader>fe",vim.cmd.Ex)
vim.keymap.set("n","<leader>we",vim.cmd.noh)

vim.keymap.set("n", "<leader>tt", function()
    vim.cmd("sp")
    vim.cmd("terminal")
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>x', true, false, true), 'n', true)
end, { noremap = true, silent = true })


vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])


-- Changing size of window
change_by = 2 
vim.api.nvim_set_keymap('n', '=', string.format(':resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '-', string.format(':resize -%d<CR>',change_by), { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '+', string.format(':vertical resize +%d<CR>',change_by), { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '_', string.format(':vertical resize -%d<CR>',change_by), { noremap = true, silent = true })


function other_side(key_pressed,other_key)
    vim.keymap.set('i', key_pressed, function()

        vim.api.nvim_feedkeys(key_pressed .. other_key, 'n', false)
        
        vim.defer_fn(function()
    
            vim.api.nvim_command("stopinsert")
            vim.api.nvim_feedkeys("i", 'n', false) 
    
        end, 1) 
    
    end, { noremap = true, silent = true })
end

keys = {
    ['"'] = '"', 
    ["'"] = "'", 
    ["{"] = "}", 
    ["["] = "]", 
    ["("] = ")"
}

for key,other_key in pairs(keys) do
    other_side(key,other_key)
end