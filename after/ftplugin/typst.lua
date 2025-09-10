vim.opt_local.wrap = true
vim.opt_local.linebreak = true

-- This will use 'gj' only when no count is given, otherwise use normal 'j'
vim.keymap.set('n', 'j', function()
  return vim.v.count == 0 and 'gj' or 'j'
end, { expr = true, silent = true })

vim.keymap.set('n', 'k', function()
  return vim.v.count == 0 and 'gk' or 'k'
end, { expr = true, silent = true })