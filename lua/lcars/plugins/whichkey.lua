local palette = require("lcars.palette")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    WhichKey = { fg = c.purple },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.gray },
    WhichKeySeparator = { fg = c.gray },
    WhichKeyFloat = { bg = bg },
    WhichKeyBorder = { fg = c.lilac, bg = bg },
    WhichKeyValue = { fg = c.gray },
  }

  return groups
end

return M
