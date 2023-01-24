if vim.g.vscode then
  require "user.lightspeed"
  require "user.comment"
    -- VSCode extension
else
  require "user.options"
  require "user.keymaps"
  require "user.plugins"
  require "user.colorscheme"
  require "user.cmp"
  require "user.lsp"
  require "user.lualine"
  require "user.treesitter"
  require "user.nvim-tree"
  require "user.telescope"
  require "user.autopairs"
  require "user.comment"
  require "user.gitsigns"
  require "impatient"
  require "user.copilot"
  require "user.toggleterm"
  require "user.transparent"
  require "user.lightspeed"
  require "user.alpha"
  require "user.projections"
  require "user.lspsaga"
  require "user.whichkey"
  require('user.mini-animate')
end
