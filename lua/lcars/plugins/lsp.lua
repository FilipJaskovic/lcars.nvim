local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors

  local groups = {
    -- LSP Semantic Token Types (Neovim 0.9+)
    ["@lsp.type.class"] = { fg = c.lilac },
    ["@lsp.type.comment"] = { fg = c.gray, italic = true },
    ["@lsp.type.decorator"] = { fg = c.yellow },
    ["@lsp.type.enum"] = { fg = c.lilac },
    ["@lsp.type.enumMember"] = { fg = c.cyan },
    ["@lsp.type.function"] = { fg = c.blue },
    ["@lsp.type.interface"] = { fg = c.lilac },
    ["@lsp.type.keyword"] = { fg = c.pink },
    ["@lsp.type.macro"] = { fg = c.blue },
    ["@lsp.type.method"] = { fg = c.blue },
    ["@lsp.type.namespace"] = { fg = c.lilac },
    ["@lsp.type.number"] = { fg = c.yellow },
    ["@lsp.type.operator"] = { fg = c.fg },
    ["@lsp.type.parameter"] = { fg = c.fg },
    ["@lsp.type.property"] = { fg = c.purple },
    ["@lsp.type.regexp"] = { fg = c.cyan },
    ["@lsp.type.string"] = { fg = c.orange },
    ["@lsp.type.struct"] = { fg = c.lilac },
    ["@lsp.type.type"] = { fg = c.lilac },
    ["@lsp.type.typeParameter"] = { fg = c.lilac },
    ["@lsp.type.variable"] = { fg = c.purple },

    -- LSP Semantic Token Modifiers
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = { fg = c.yellow },
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.abstract"] = { italic = true },
    ["@lsp.mod.async"] = { italic = true },
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = { italic = true },
    ["@lsp.mod.defaultLibrary"] = { fg = c.lilac },

    -- LSP Type + Modifier combinations
    ["@lsp.typemod.variable.readonly"] = { fg = c.yellow },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.lilac },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.property.readonly"] = { fg = c.yellow },

    -- LSP References
    LspReferenceText = { bg = util.blend(c.gray, c.bg, 0.3) },
    LspReferenceRead = { bg = util.blend(c.cyan, c.bg, 0.2) },
    LspReferenceWrite = { bg = util.blend(c.cyan, c.bg, 0.25), bold = true },

    -- LSP Signature Help
    LspSignatureActiveParameter = { fg = c.orange, bold = true, underline = true },

    -- LSP CodeLens
    LspCodeLens = { fg = c.lilac },
    LspCodeLensSeparator = { fg = c.gray },

    -- LSP Inlay Hints (Neovim 0.10+)
    LspInlayHint = { fg = c.gray, bg = util.blend(c.lilac, c.bg, 0.07), italic = true },
  }

  return groups
end

return M

