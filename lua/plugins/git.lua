return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.gitsigns")
    end
  },
  {
    "tpope/vim-fugitive",
    event = "BufRead"
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",       -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",      -- optional
    },
    config = true
  },
}
