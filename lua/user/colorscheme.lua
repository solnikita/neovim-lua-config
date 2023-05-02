local colorscheme = "dracula"
local colors = require("user.colors.dracula")

-- Applying colors
local function set_colors(fg, bg)
	return "guifg=" .. fg .. " guibg=" .. bg
end
local api = vim.api
api.nvim_command("hi WhichKeyGroup " .. set_colors(colors.purple, colors.bg))
api.nvim_command("hi WhichKeyFloat " .. set_colors(colors.orange, colors.bg))
api.nvim_command("hi WhichKeyBorder " .. set_colors(colors.bg, colors.bg))
api.nvim_command("hi TelescopeTitle " .. set_colors(colors.white, 'none'))
api.nvim_command("hi TelescopePreviewNormal " .. set_colors(colors.white, 'none'))
api.nvim_command("hi TelescopePromptNormal " .. set_colors(colors.white, 'none'))
api.nvim_command("hi TelescopeResultsNormal " .. set_colors(colors.white, 'none'))
api.nvim_command("hi TelescopeBorder " .. set_colors(colors.black, 'none'))

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
