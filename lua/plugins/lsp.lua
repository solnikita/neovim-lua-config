return {
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("plugins.configs.lspsaga")
    end
  },
  {
    "SmiteshP/nvim-navbuddy",
    event = "BufRead",
    config = function()
      require("plugins.configs.navbuddy")
    end
  },
  {
    "folke/trouble.nvim",
    event = "BufRead",
    config = function()
      require("trouble").setup({})
    end
  },
}
