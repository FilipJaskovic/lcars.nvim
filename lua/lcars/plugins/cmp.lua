local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.gray, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.orange, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.orange },
    CmpItemAbbrSelected = { fg = c.orange, bg = c.gray_dark, bold = true },
    CmpItemMenu = { fg = c.gray },

    CmpItemKindDefault = { fg = c.fg },
    CmpItemKindKeyword = { fg = c.pink },
    CmpItemKindVariable = { fg = c.purple },
    CmpItemKindConstant = { fg = c.yellow },
    CmpItemKindReference = { fg = c.purple },
    CmpItemKindValue = { fg = c.yellow },
    CmpItemKindCopilot = { fg = c.cyan },

    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },
    CmpItemKindConstructor = { fg = c.lilac },

    CmpItemKindClass = { fg = c.lilac },
    CmpItemKindInterface = { fg = c.lilac },
    CmpItemKindStruct = { fg = c.lilac },
    CmpItemKindEvent = { fg = c.lilac },
    CmpItemKindEnum = { fg = c.lilac },
    CmpItemKindUnit = { fg = c.lilac },

    CmpItemKindModule = { fg = c.lilac },
    CmpItemKindProperty = { fg = c.purple },
    CmpItemKindField = { fg = c.purple },
    CmpItemKindTypeParameter = { fg = c.lilac },
    CmpItemKindEnumMember = { fg = c.cyan },
    CmpItemKindOperator = { fg = c.cyan },
    CmpItemKindSnippet = { fg = c.green },

    CmpItemKindText = { fg = c.fg },
    CmpItemKindFile = { fg = c.fg },
    CmpItemKindFolder = { fg = c.blue },
    CmpItemKindColor = { fg = c.pink },

    CmpDocumentation = { fg = c.fg, bg = util.blend(c.lilac, c.bg, 0.08) },
    CmpDocumentationBorder = { fg = c.lilac, bg = util.blend(c.lilac, c.bg, 0.08) },
  }

  return groups
end

return M

