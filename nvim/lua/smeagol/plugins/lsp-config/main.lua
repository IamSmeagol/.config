require('mason').setup()
require('mason-lspconfig').setup {
		ensure_installed = { 'lua_ls', 'jsonls' },
}

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      hint = {
			  enable = true,
			  setType = true,
			  paramName = "All",
			  paramType = true,
	  },
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
	      workspace = { checkThirdParty = false }, -- FIX https://github.com/sumneko/lua-language-server/issues/679#issuecomment-925524834
      },
    },
  },
}

require'lspconfig'.jsonls.setup {
   settings = {
	  json = {
		 schemas = require('schemastore').json.schemas(),
		 validate = { enable = true },
	  },
   },
}
