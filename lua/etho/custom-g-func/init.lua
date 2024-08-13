_G.generate_ctag = function()
  local line_content = vim.fn.getline '.'
  local line_number = vim.fn.line '.'
  local filename = vim.fn.expand '%:p'

  local tag_entry = {
    tagname = line_content,
    from = { filename, line_number, 0 },
  }
  local win_id = vim.fn.win_getid()
  local current_stack = vim.fn.gettagstack(win_id)
  table.insert(current_stack.items, tag_entry)
  vim.fn.settagstack(win_id, current_stack, 't')

  print('Tag added: ' .. line_content)
end
