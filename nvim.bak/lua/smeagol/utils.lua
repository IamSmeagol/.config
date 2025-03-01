-- Allows + and * registers to go to Windows system keyboard
vim.g.clipboard = {
                   name = 'WslClipboard',
                   copy = {
                      ['+'] = 'clip.exe',
                      ['*'] = 'clip.exe',
                    },
                   paste = {
                      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                   },
                   cache_enabled = 0,
                 }

-- Open help window in a vertical split to the right.
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = vim.api.nvim_create_augroup("help_window_right", {}),
    pattern = { "*.txt" },
    callback = function()
        if vim.o.filetype == 'help' then vim.cmd.wincmd("L") end
    end
})


vim.opt.relativenumber = true

vim.opt.tabstop = 4

vim.opt.shiftwidth = 4

vim.opt.splitright = true

vim.g.netrw_preview = "1"

-- Sets theme
vim.g.nord_borders = true
require('nord').set()
