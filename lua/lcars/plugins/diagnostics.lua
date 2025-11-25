local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors

  local groups = {
    -- Diagnostic highlights (base)
    DiagnosticError = { fg = c.red_bright },
    DiagnosticWarn = { fg = c.orange },
    DiagnosticInfo = { fg = c.green },
    DiagnosticHint = { fg = c.cyan },
    DiagnosticOk = { fg = c.green },

    -- Virtual text
    DiagnosticVirtualTextError = { fg = c.red_bright, bg = util.blend(c.red_bright, c.bg, 0.1) },
    DiagnosticVirtualTextWarn = { fg = c.orange, bg = util.blend(c.orange, c.bg, 0.1) },
    DiagnosticVirtualTextInfo = { fg = c.green, bg = util.blend(c.green, c.bg, 0.1) },
    DiagnosticVirtualTextHint = { fg = c.cyan, bg = util.blend(c.cyan, c.bg, 0.1) },
    DiagnosticVirtualTextOk = { fg = c.green, bg = util.blend(c.green, c.bg, 0.1) },

    -- Underlines
    DiagnosticUnderlineError = { undercurl = true, sp = c.red_bright },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.green },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.cyan },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.green },

    -- Floating windows
    DiagnosticFloatingError = { fg = c.red_bright },
    DiagnosticFloatingWarn = { fg = c.orange },
    DiagnosticFloatingInfo = { fg = c.green },
    DiagnosticFloatingHint = { fg = c.cyan },
    DiagnosticFloatingOk = { fg = c.green },

    -- Signs
    DiagnosticSignError = { fg = c.red_bright },
    DiagnosticSignWarn = { fg = c.orange },
    DiagnosticSignInfo = { fg = c.green },
    DiagnosticSignHint = { fg = c.cyan },
    DiagnosticSignOk = { fg = c.green },

    -- Deprecated (used for deprecated code)
    DiagnosticDeprecated = { strikethrough = true, fg = c.gray },
    DiagnosticUnnecessary = { fg = c.gray },
  }

  return groups
end

return M

