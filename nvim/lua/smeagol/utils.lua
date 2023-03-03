require("smeagol/remap")

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


vim.o.relativenumber = true
vim.o.tabstop = 4
-- set shiftwidth=3
-- set autoindent

vim.cmd[[colorscheme nord]]
