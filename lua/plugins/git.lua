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
    "TimUntersberger/neogit",
    event = "BufRead",
  },
}
