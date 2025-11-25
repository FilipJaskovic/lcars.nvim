-- Loader for the LCARS colorscheme
-- Keeps Neovim compatible with :colorscheme lcars
local ok, lcars = pcall(require, "lcars")
if ok then
  lcars.setup()
else
  vim.api.nvim_echo({ { "lcars.nvim: failed to require 'lcars'", "ErrorMsg" } }, true, {})
end


