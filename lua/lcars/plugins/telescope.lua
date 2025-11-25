local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    TelescopeNormal = { fg = c.fg, bg = bg },
    TelescopeBorder = { fg = c.lilac, bg = bg },
    TelescopeTitle = { fg = c.orange, bold = true },

    TelescopePromptNormal = { fg = c.fg, bg = bg },
    TelescopePromptBorder = { fg = c.pink, bg = bg },
    TelescopePromptTitle = { fg = c.gray_darker, bg = c.pink, bold = true },
    TelescopePromptPrefix = { fg = c.orange },
    TelescopePromptCounter = { fg = c.gray },

    TelescopeResultsNormal = { fg = c.fg, bg = bg },
    TelescopeResultsBorder = { fg = c.lilac, bg = bg },
    TelescopeResultsTitle = { fg = c.gray_darker, bg = c.lilac, bold = true },

    TelescopePreviewNormal = { fg = c.fg, bg = bg },
    TelescopePreviewBorder = { fg = c.blue, bg = bg },
    TelescopePreviewTitle = { fg = c.gray_darker, bg = c.blue, bold = true },
    TelescopePreviewLine = { bg = util.blend(c.lilac, c.bg, 0.15) },

    TelescopeSelection = { fg = c.gray_darker, bg = c.pink, bold = true },
    TelescopeSelectionCaret = { fg = c.gray_darker, bg = c.pink },
    TelescopeMultiSelection = { fg = c.gray_darker, bg = c.purple },
    TelescopeMultiIcon = { fg = c.orange },

    TelescopeMatching = { fg = c.orange, bold = true },
  }

  return groups
end

return M

