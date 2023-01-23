function change_word_to_tag()
  local word = vim.fn.expand("<cword>")
  local tag = "<" .. word .. "></" .. word .. ">"
  local cursor_pos = #word + 3
  local line = vim.fn.getline(".")
  local line_start = line:sub(1, vim.fn.col(".") - 1)
  local line_end = line:sub(vim.fn.col(".") + #word, -1)
  vim.fn.setline(".", line_start .. tag .. line_end)
  vim.fn.cursor(vim.fn.line("."), cursor_pos)
  vim.cmd("startinsert")
end
