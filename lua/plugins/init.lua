return {
  "lewis6991/impatient.nvim",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.configs.lualine")
    end
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.configs.nvimtree")
    end
  },
  "kyazdani42/nvim-web-devicons",
  {
    "windwp/nvim-autopairs",
    config = function()
      require("plugins.configs.autopairs")
    end
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.configs.comment")
    end
  },
  "JoosepAlviste/nvim-ts-context-commentstring",
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("plugins.configs.copilot")
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.configs.gitsigns")
    end
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.configs.toggleterm")
    end
  },
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("plugins.configs.transparent")
    end
  },
  {
    "ggandor/lightspeed.nvim",
    config = function()
      require("lightspeed").setup({})
    end
  },
  {
    "goolord/alpha-nvim",
    config = function()
      require("plugins.configs.alpha")
    end
  },
  "folke/which-key.nvim",
  "dstein64/vim-startuptime",
  {
    "jackMort/ChatGPT.nvim",
      config = function()
        require("chatgpt").setup({
          -- optional configuration
        })
      end,
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      }
  },
  {
    "echasnovski/mini.animate",
    config = function()
      require("plugins.configs.mini-animate")
    end
  },
  {'akinsho/bufferline.nvim'},
  "renerocksai/telekasten.nvim",
  {"shortcuts/no-neck-pain.nvim"},

  -- Colorscheme
  "Mofiqul/dracula.nvim",
  "olimorris/onedarkpro.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "zbirenbaum/copilot-cmp",

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "RRethy/vim-illuminate",
  "glepnir/lspsaga.nvim",

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
  },
  "windwp/nvim-ts-autotag",

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugins.configs.telescope")
    end
  },
  {
    'sudormrfbin/cheatsheet.nvim',

    dependencies = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  },
  {
    "gnikdroy/projections.nvim",
    config = function()
      require("plugins.configs.projections")
    end
  },
}
