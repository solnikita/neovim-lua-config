local status_ok, navbuddy = pcall(require, "nvim-navbuddy")
if not status_ok then
  return
end
local actions = require("nvim-navbuddy.actions")

navbuddy.setup({
  window = {
    border = "single",     -- "rounded", "double", "solid", "none"
    -- or an array with eight chars building up the border in a clockwise fashion
    -- starting with the top-left corner. eg: { "╔", "═" ,"╗", "║", "╝", "═", "╚", "║" }.
    size = "60%",
    position = "50%",
    sections = {
      left = {
        size = "20%",
        border = nil         -- You can set border style for each section individually as well.
      },
      mid = {
        size = "40%",
        border = nil
      },
      right = {
        -- No size option for right most section. It fills to
        -- remaining area.
        border = nil
      }
    }
  },
  icons = {
    File          = " ",
    Module        = " ",
    Namespace     = " ",
    Package       = " ",
    Class         = " ",
    Method        = " ",
    Property      = " ",
    Field         = " ",
    Constructor   = " ",
    Enum          = "練",
    Interface     = "練",
    Function      = " ",
    Variable      = " ",
    Constant      = " ",
    String        = " ",
    Number        = " ",
    Boolean       = "◩ ",
    Array         = " ",
    Object        = " ",
    Key           = " ",
    Null          = "ﳠ ",
    EnumMember    = " ",
    Struct        = " ",
    Event         = " ",
    Operator      = " ",
    TypeParameter = " ",
  },
  lsp = {
    auto_attach = true,     -- If set to true, you don't need to manually use attach function
    preference = nil         -- list of lsp server names in order of preference
  }
})
