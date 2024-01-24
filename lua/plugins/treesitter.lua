return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- dependencies = {
    --   "JoosepAlviste/nvim-ts-context-commentstring"
    -- },
    config = function()
      require("plugins.configs.treesitter")
    end
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    'nmac427/guess-indent.nvim',
    event = "BufRead",
    config = function()
      require('guess-indent').setup {}
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    config = function()
      require('mini.ai').setup()
    end
  },
  {
    "numToStr/Comment.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.comment")
    end
  },
}
