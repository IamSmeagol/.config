return {
  "maskudo/devdocs.nvim",
  lazy = false,
  keys = {
    {
      "<leader>kg",
      mode = "n",
      "<cmd>DevDocs get<cr>",
      desc = "Get Devdocs",
    },
    {
      "<leader>ki",
      mode = "n",
      "<cmd>DevDocs install<cr>",
      desc = "Install Devdocs",
    },
  },
  opts = {
    ensure_installed = {
      "openjdk~21",
      "cpp",
    },
  },
}
