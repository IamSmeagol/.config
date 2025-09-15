-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Makes J and K visually line wise rather than absolute
keymap("n", "j", function()
  if vim.v.count == 0 then
    return "gj"
  end
  return "j"
end, { silent = true, desc = "j moves display linewise" })
keymap("n", "k", function()
  if vim.v.count == 0 then
    return "gk"
  end
  return "k"
end, { silent = true, desc = "k moves display linewise" })

-- To remove <C-space> which is used by tmux
-- Removes insert mode cmp.complete which shows the cmp pop up
-- removes two treesitter commands, need to look into replacing them
keymap({ "n", "i", "x" }, "<C-space>", "<Nop>")

keymap("i", "<M-'>", "'", { noremap = true, silent = true, desc = "Single Quote (Unpaired)" })
keymap("i", '<M-">', '"', { noremap = true, silent = true, desc = "Double Quote (Unpaired)" })
