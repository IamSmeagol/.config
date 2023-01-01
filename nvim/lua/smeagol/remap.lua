-- Space then pv opens the explorer menu
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Typing w in command mode writes all
vim.keymap.set("c", "w", vim.cmd.wall)
-- Normal mode esc ends highlights and searches
vim.keymap.set("n", "<Esc>", ":nohl<CR>:echo<CR>")
-- Mouse click results in "a"

