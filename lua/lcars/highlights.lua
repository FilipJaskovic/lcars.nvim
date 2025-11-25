local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = c.gray_darker },
    FloatBorder = { fg = c.lilac, bg = c.gray_darker },
    FloatTitle = { fg = c.orange, bg = c.gray_darker },

    Cursor = { fg = c.bg, bg = c.fg },
    CursorIM = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.gray_darker },
    CursorLineNr = { fg = c.orange },
    LineNr = { fg = c.lilac },
    SignColumn = { fg = c.fg, bg = bg },
    ColorColumn = { bg = c.gray_darker },
    CursorColumn = { bg = c.gray_darker },

    StatusLine = { fg = c.pink, bg = c.gray_darker },
    StatusLineNC = { fg = c.gray, bg = c.bg },
    WinSeparator = { fg = c.purple, bg = bg },
    VertSplit = { fg = c.purple, bg = bg },
    TabLine = { fg = c.lilac, bg = c.bg },
    TabLineFill = { fg = c.gray, bg = c.bg },
    TabLineSel = { fg = c.purple, bg = c.gray_darker },

    Search = { fg = c.orange, bg = c.gray_dark },
    IncSearch = { fg = c.yellow, bg = c.gray_dark },
    CurSearch = { fg = c.orange, bg = c.gray_dark },
    Visual = { bg = c.gray_dark },
    VisualNOS = { bg = c.gray_dark },
    MatchParen = { fg = c.yellow, bg = c.gray_dark },

    Pmenu = { fg = c.fg, bg = c.gray_darker },
    PmenuSel = { fg = c.orange, bg = c.gray_dark },
    PmenuKind = { fg = c.purple, bg = c.gray_darker },
    PmenuKindSel = { fg = c.purple, bg = c.gray_dark },
    PmenuExtra = { fg = c.gray, bg = c.gray_darker },
    PmenuExtraSel = { fg = c.gray, bg = c.gray_dark },
    PmenuSbar = { bg = c.gray_dark },
    PmenuThumb = { bg = c.purple },

    Folded = { fg = c.lilac, bg = c.gray_darker },
    FoldColumn = { fg = c.lilac, bg = bg },

    Title = { fg = c.orange },
    NonText = { fg = c.gray },
    Whitespace = { fg = c.gray_dark },
    SpecialKey = { fg = c.purple },
    EndOfBuffer = { fg = c.gray_dark },

    Directory = { fg = c.purple },
    Error = { fg = c.red_bright },
    WarningMsg = { fg = c.orange },
    MoreMsg = { fg = c.green },
    Question = { fg = c.blue },

    QuickFixLine = { bg = c.gray_dark },
    WildMenu = { fg = c.orange, bg = c.gray_dark },

    SpellBad = { undercurl = true, sp = c.red_bright },
    SpellCap = { undercurl = true, sp = c.blue },
    SpellLocal = { undercurl = true, sp = c.green },
    SpellRare = { undercurl = true, sp = c.purple },
  }

  return groups
end

return M
