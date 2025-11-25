local palette = require("lcars.palette")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors

  local groups = {
    -- Identifiers
    ["@variable"] = { fg = c.purple },
    ["@variable.builtin"] = { fg = c.lilac },
    ["@variable.parameter"] = { fg = c.fg },
    ["@variable.member"] = { fg = c.purple },

    ["@constant"] = { fg = c.yellow },
    ["@constant.builtin"] = { fg = c.yellow },
    ["@constant.macro"] = { fg = c.yellow },

    ["@module"] = { fg = c.lilac },
    ["@module.builtin"] = { fg = c.lilac },
    ["@label"] = { fg = c.pink },

    -- Literals
    ["@string"] = { fg = c.orange },
    ["@string.documentation"] = { fg = c.orange },
    ["@string.regexp"] = { fg = c.cyan },
    ["@string.escape"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.cyan },
    ["@string.special.symbol"] = { fg = c.cyan },
    ["@string.special.url"] = { fg = c.link, underline = true },
    ["@string.special.path"] = { fg = c.orange },

    ["@character"] = { fg = c.orange },
    ["@character.special"] = { fg = c.cyan },

    ["@boolean"] = { fg = c.yellow },
    ["@number"] = { fg = c.yellow },
    ["@number.float"] = { fg = c.yellow },

    -- Types
    ["@type"] = { fg = c.lilac },
    ["@type.builtin"] = { fg = c.lilac },
    ["@type.definition"] = { fg = c.lilac },
    ["@type.qualifier"] = { fg = c.pink },

    ["@attribute"] = { fg = c.yellow },
    ["@attribute.builtin"] = { fg = c.yellow },
    ["@property"] = { fg = c.purple },

    -- Functions
    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.cyan },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.blue },
    ["@function.method"] = { fg = c.blue },
    ["@function.method.call"] = { fg = c.blue },

    ["@constructor"] = { fg = c.lilac },

    -- Keywords
    ["@keyword"] = { fg = c.pink },
    ["@keyword.coroutine"] = { fg = c.pink },
    ["@keyword.function"] = { fg = c.pink },
    ["@keyword.operator"] = { fg = c.pink },
    ["@keyword.import"] = { fg = c.pink },
    ["@keyword.type"] = { fg = c.pink },
    ["@keyword.modifier"] = { fg = c.pink },
    ["@keyword.repeat"] = { fg = c.pink },
    ["@keyword.return"] = { fg = c.pink },
    ["@keyword.debug"] = { fg = c.pink },
    ["@keyword.exception"] = { fg = c.pink },
    ["@keyword.conditional"] = { fg = c.pink },
    ["@keyword.conditional.ternary"] = { fg = c.pink },
    ["@keyword.directive"] = { fg = c.pink },
    ["@keyword.directive.define"] = { fg = c.pink },

    -- Operators & punctuation
    ["@operator"] = { fg = c.fg },
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.pink },

    -- Comments
    ["@comment"] = { fg = c.gray, italic = true },
    ["@comment.documentation"] = { fg = c.gray, italic = true },
    ["@comment.error"] = { fg = c.red_bright, bold = true },
    ["@comment.warning"] = { fg = c.orange, bold = true },
    ["@comment.todo"] = { fg = c.cyan, bold = true },
    ["@comment.note"] = { fg = c.blue, bold = true },

    -- Markup (markdown, etc.)
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.purple, bold = true },
    ["@markup.heading.1"] = { fg = c.purple, bold = true },
    ["@markup.heading.2"] = { fg = c.purple, bold = true },
    ["@markup.heading.3"] = { fg = c.purple, bold = true },
    ["@markup.heading.4"] = { fg = c.purple, bold = true },
    ["@markup.heading.5"] = { fg = c.purple, bold = true },
    ["@markup.heading.6"] = { fg = c.purple, bold = true },

    ["@markup.quote"] = { fg = c.gray, italic = true },
    ["@markup.math"] = { fg = c.yellow },
    ["@markup.environment"] = { fg = c.pink },
    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.link, underline = true },
    ["@markup.raw"] = { fg = c.orange },
    ["@markup.raw.block"] = { fg = c.orange },
    ["@markup.list"] = { fg = c.purple },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.gray },

    -- Diff
    ["@diff.plus"] = { fg = c.green },
    ["@diff.minus"] = { fg = c.red },
    ["@diff.delta"] = { fg = c.link },

    -- Tags (HTML/JSX)
    ["@tag"] = { fg = c.purple },
    ["@tag.builtin"] = { fg = c.purple },
    ["@tag.attribute"] = { fg = c.yellow, italic = true },
    ["@tag.delimiter"] = { fg = c.fg },
  }

  return groups
end

return M

