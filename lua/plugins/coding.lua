return {
  {
    "L3MON4D3/LuaSnip",
    event = "BufRead"
  },
  {
    "rafamadriz/friendly-snippets",
    event = "BufRead"
  },
  {
    "windwp/nvim-autopairs",
    event = "BufRead",
    config = function()
      require("plugins.configs.autopairs")
    end
  },
  {
    "zbirenbaum/copilot.lua",
    event = "BufRead",
    config = function()
      require("plugins.configs.copilot")
    end
  },
  {
    "ggandor/leap.nvim",
    event = "BufRead",
    config = function()
      require("leap").add_default_mappings()
    end
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup()
    end
  },
}
