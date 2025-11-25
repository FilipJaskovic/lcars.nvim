local palette = require("lcars.palette")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    TelescopeNormal = { fg = c.fg, bg = bg },
    TelescopeBorder = { fg = c.lilac, bg = bg },
    TelescopeTitle = { fg = c.orange },

    TelescopePromptNormal = { fg = c.fg, bg = bg },
    TelescopePromptBorder = { fg = c.pink, bg = bg },
    TelescopePromptTitle = { fg = c.pink },
    TelescopePromptPrefix = { fg = c.orange },
    TelescopePromptCounter = { fg = c.gray },

    TelescopeResultsNormal = { fg = c.fg, bg = bg },
    TelescopeResultsBorder = { fg = c.lilac, bg = bg },
    TelescopeResultsTitle = { fg = c.lilac },

    TelescopePreviewNormal = { fg = c.fg, bg = bg },
    TelescopePreviewBorder = { fg = c.blue, bg = bg },
    TelescopePreviewTitle = { fg = c.blue },
    TelescopePreviewLine = { bg = c.gray_dark },

    TelescopeSelection = { fg = c.orange, bg = c.gray_dark },
    TelescopeSelectionCaret = { fg = c.orange, bg = c.gray_dark },
    TelescopeMultiSelection = { fg = c.purple, bg = c.gray_dark },
    TelescopeMultiIcon = { fg = c.orange },

    TelescopeMatching = { fg = c.orange },
  }

  return groups
end

return M
