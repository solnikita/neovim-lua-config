return {
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
    "nvim-telescope/telescope-symbols.nvim",
    event = "VeryLazy",
  },

}
