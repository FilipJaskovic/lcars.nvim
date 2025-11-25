local palette = require("lcars.palette")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors

  local groups = {
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.gray, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.orange },
    CmpItemAbbrMatchFuzzy = { fg = c.orange },
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

    CmpDocumentation = { fg = c.fg, bg = c.gray_darker },
    CmpDocumentationBorder = { fg = c.lilac, bg = c.gray_darker },
  }

  return groups
end

return M
