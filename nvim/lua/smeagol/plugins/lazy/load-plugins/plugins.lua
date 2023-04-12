return {

		'folke/neodev.nvim', -- NEO DEV HELPS WITH NVIM CONFIG

		-- CMP PLUGINS
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'saadparwaiz1/cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',

		-- SNIPPETS 
		'L3MON4D3/LuaSnip',
		'rafamadriz/friendly-snippets',

		-- LSP PLUGINS
		'neovim/nvim-lspconfig',
		{
		'williamboman/mason.nvim',
		build = "MasonUpdate"
},
		'williamboman/mason-lspconfig.nvim',
}

