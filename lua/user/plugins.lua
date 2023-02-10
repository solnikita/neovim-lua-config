-- Auto install lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save inport lazy
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

return lazy.setup({
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lualine/lualine.nvim",
  "kyazdani42/nvim-tree.lua",
  "kyazdani42/nvim-web-devicons",
  "windwp/nvim-autopairs",
  "numToStr/Comment.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  'lewis6991/impatient.nvim',
  "zbirenbaum/copilot.lua",
  "lewis6991/gitsigns.nvim",
  "akinsho/toggleterm.nvim",
  "xiyaowong/nvim-transparent",
  "ggandor/lightspeed.nvim",
  "goolord/alpha-nvim",
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
  "echasnovski/mini.animate",
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
  "nvim-telescope/telescope.nvim",
  {
    'sudormrfbin/cheatsheet.nvim',

    dependencies = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  },
  "gnikdroy/projections.nvim",
})
