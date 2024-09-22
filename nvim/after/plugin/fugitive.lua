vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- vim.api.nvim_create_user_command(
--   'git',       -- the new command name
--   function (ops)
--     vim.cmd("Git"..ops)
--   end,     -- the function or command to execute
--   {nargs = '*'}             -- table of options (e.g., arguments, ranges)
-- )