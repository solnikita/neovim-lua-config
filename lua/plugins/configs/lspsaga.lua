local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
  return
end

lspsaga.setup({
  lightbulb = {
    enable = false,
  },
  symbol_in_winbar = {
    enable = false,
  }
})
