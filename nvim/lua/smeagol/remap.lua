-- Space then pv opens the explorer menu
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Typing w in command mode writes all
vim.keymap.set("c", "w", vim.cmd.wall)
