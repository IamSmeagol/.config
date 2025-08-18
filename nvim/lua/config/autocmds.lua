-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function(ev)
    if vim.bo[ev.buf].buftype == "help" then
      vim.bo[ev.buf].buflisted = true
    end
  end,
})
