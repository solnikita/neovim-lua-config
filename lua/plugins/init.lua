return {
  "lewis6991/impatient.nvim",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "kyazdani42/nvim-web-devicons",
  "JoosepAlviste/nvim-ts-context-commentstring",
  'akinsho/bufferline.nvim',
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
    "numToStr/Comment.nvim",
    event = "BufRead",
    config = function()
      require("plugins.configs.comment")
    end
  },
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("plugins.configs.copilot")
    end
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   config = function()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
  --     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
  --     vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --   end
  -- },
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
  "Mofiqul/dracula.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp",         -- The completion plugin
  "hrsh7th/cmp-buffer",       -- buffer completions
  "hrsh7th/cmp-path",         -- path completions
  "hrsh7th/cmp-cmdline",      -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "zbirenbaum/copilot-cmp",

  -- snippets
  "L3MON4D3/LuaSnip",             --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

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
    config = function()
      require("plugins.configs.navbuddy")
    end
  },

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
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
  {
    "gnikdroy/projections.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.configs.projections")
    end
  },
}
