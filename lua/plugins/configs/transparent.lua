local status_ok, transparent = pcall(require, "transparent")
if not status_ok then
  return
end

transparent.setup {
  extra_groups = {
    "NvimTreeNormal",
    "NvimTreeStatuslineNc",
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
}

