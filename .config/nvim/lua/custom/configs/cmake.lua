local M = {}

M.build = function()
  vim.cmd('!make')
end

M.run = function()
  vim.cmd('!./TodoManager') -- assuming TodoManager is your executable name
end

return M
