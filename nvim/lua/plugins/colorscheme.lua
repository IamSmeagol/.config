return {
  -- add nord
  {
    "IamSmeagol/nord.nvim",
    opts = {
      transparent = true,
    },
  },
  -- {
  --   "shaunsingh/nord.nvim",
  -- },

  -- Configure LazyVim to load nord
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
