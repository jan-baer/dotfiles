local M = {}

-- TODO think about implementing UI
-- M.ui = { theme = 'catppuccin' }
-- M.plugins = "custom.plugins.init"
M.settings = require "custom.settings"
M.mappings = require "custom.mappings"
M.cmake = require "custom.configs.cmake"

return M
