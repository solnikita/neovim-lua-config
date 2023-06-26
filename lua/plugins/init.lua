return {
  "lewis6991/impatient.nvim",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "akinsho/bufferline.nvim",
  {
    "nvim-telescope/telescope-symbols.nvim",
    event = "VeryLazy",
  },
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
  {
    "windwp/nvim-autopairs",
    event = "BufRead",
    config = function()
      require("plugins.configs.autopairs")
    end
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
  {
    "zbirenbaum/copilot.lua",
    event = "BufRead",
    config = function()
      require("plugins.configs.copilot")
    end
  },
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
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("plugins.configs.transparent")
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
    "folke/trouble.nvim",
    event = "BufRead",
    config = function()
      require("trouble").setup({})
    end
  },
  {
    "goolord/alpha-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("plugins.configs.alpha")
    end
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.configs.whichkey")
    end
  },
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.configs.chatgpt")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    "echasnovski/mini.animate",
    event = "BufRead",
    config = function()
      require("plugins.configs.mini-animate")
    end
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup()
    end
  },

  -- Colorscheme
  {
    "Mofiqul/dracula.nvim",
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
    end
  },

  -- cmp plugins
  {
    "hrsh7th/nvim-cmp",
  },
  {
    -- buffer completions
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-cmdline",
  },
  {
    "saadparwaiz1/cmp_luasnip",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "zbirenbaum/copilot-cmp",
  },

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    event = "BufRead"
  },
  {
    "rafamadriz/friendly-snippets",
    event = "BufRead"
  },

  -- LSP
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

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
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

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugins.configs.telescope")
    end
  },
  {
    'sudormrfbin/cheatsheet.nvim',
    event = "VeryLazy",
    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  },
}
