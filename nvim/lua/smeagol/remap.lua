-- Leader then pv opens the explorer menu
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Typing control + s in normal mode writes all
vim.keymap.set("n", "<C-s>", vim.cmd.wall)
-- Normal mode esc ends highlights and searches
vim.keymap.set("n", "<Esc>", ":nohl<CR>:echo<CR>")
-- Makes J and K visually line wise rather than absolute
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
