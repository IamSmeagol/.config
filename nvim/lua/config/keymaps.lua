-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Makes J and K visually line wise rather than absolute
keymap("n", "j", "gj")
keymap("n", "k", "gk")

-- To remove <C-space> which is used by tmux
-- Removes insert mode cmp.complete which shows the cmp pop up
-- removes two treesitter commands, need to look into replacing them
keymap({ "n", "i", "x" }, "<C-space>", "<Nop>")
