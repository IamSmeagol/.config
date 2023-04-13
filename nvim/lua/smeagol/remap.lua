local keymap = vim.keymap.set
-- Leader then pv opens the explorer menu
keymap("n", "<leader>pv", vim.cmd.Ex)
-- Typing control + s in normal mode writes all
keymap("n", "<C-s>", vim.cmd.wall)
-- Normal mode esc ends highlights and searches
keymap("n", "<Esc>", ":nohl<CR>:echo<CR>")
-- Makes J and K visually line wise rather than absolute
keymap("n", "j", "gj")
keymap("n", "k", "gk")

-- Accessing the lsp documentation
keymap("i", "<C-f>", function()
    vim.cmd.stopinsert()
    vim.lsp.buf.signature_help()
    vim.defer_fn(function() vim.cmd.wincmd("w") end, 100)
    keymap("n", "q", ":close<CR>", { buffer = true })
end
)

