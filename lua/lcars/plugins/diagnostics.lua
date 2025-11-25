local palette = require("lcars.palette")

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
    DiagnosticVirtualTextError = { fg = c.red_bright, bg = c.gray_darker },
    DiagnosticVirtualTextWarn = { fg = c.orange, bg = c.gray_darker },
    DiagnosticVirtualTextInfo = { fg = c.green, bg = c.gray_darker },
    DiagnosticVirtualTextHint = { fg = c.cyan, bg = c.gray_darker },
    DiagnosticVirtualTextOk = { fg = c.green, bg = c.gray_darker },

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
