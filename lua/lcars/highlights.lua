local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

-- Generate core UI highlight groups
function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local ui = palette.ui
  local transparent = opts.transparent or false

  local bg = transparent and "NONE" or c.bg
  local float_bg = transparent and "NONE" or util.blend(c.lilac, c.bg, 0.92)
  local cursorline_bg = transparent and util.blend(c.lilac, c.bg, 0.94) or util.blend(c.lilac, c.bg, 0.94)
  local visual_bg = util.blend(c.pink, c.bg, 0.55)
  local pmenu_sel_bg = ui.pmenu_sel_bg

  local groups = {
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = float_bg },
    FloatBorder = { fg = c.lilac, bg = float_bg },
    FloatTitle = { fg = c.orange, bg = float_bg, bold = true },

    Cursor = { fg = c.bg, bg = ui.cursor },
    CursorIM = { fg = c.bg, bg = ui.cursor },
    CursorLine = { bg = cursorline_bg },
    CursorLineNr = { fg = c.orange, bold = true },
    LineNr = { fg = palette.colors.lilac },
    SignColumn = { fg = c.fg, bg = bg },
    ColorColumn = { bg = util.blend(c.lilac, c.bg, 0.90) },
    CursorColumn = { bg = util.blend(c.lilac, c.bg, 0.92) },

    StatusLine = { fg = c.pink, bg = c.bg, bold = true },
    StatusLineNC = { fg = c.gray, bg = c.bg },
    WinSeparator = { fg = c.purple, bg = bg },
    VertSplit = { fg = c.purple, bg = bg },
    TabLine = { fg = c.lilac, bg = c.bg },
    TabLineFill = { fg = c.gray, bg = c.bg },
    TabLineSel = { fg = c.purple, bg = c.bg, bold = true },

    Search = { fg = c.orange, bg = c.gray_dark, bold = true },
    IncSearch = { fg = c.yellow, bg = c.gray_dark, bold = true },
    CurSearch = { fg = c.orange, bg = c.gray_dark, bold = true },
    Visual = { bg = c.gray_dark },
    VisualNOS = { bg = c.gray_dark },
    MatchParen = { fg = c.yellow, bg = c.gray_dark, bold = true },

    Pmenu = { fg = c.fg, bg = c.gray_darker },
    PmenuSel = { fg = c.orange, bg = c.gray_dark, bold = true },
    PmenuKind = { fg = c.purple },
    PmenuKindSel = { fg = c.purple, bg = c.gray_dark, bold = true },
    PmenuExtra = { fg = c.gray },
    PmenuExtraSel = { fg = c.gray, bg = c.gray_dark },
    PmenuSbar = { bg = c.gray_dark },
    PmenuThumb = { bg = c.purple },

    Folded = { fg = c.lilac, bg = util.blend(c.lilac, c.bg, 0.12) },
    FoldColumn = { fg = c.lilac, bg = bg },

    Title = { fg = c.orange, bold = true },
    NonText = { fg = util.blend(c.fg, c.bg, 0.25) },
    Whitespace = { fg = util.blend(c.fg, c.bg, 0.2) },
    SpecialKey = { fg = c.purple },
    EndOfBuffer = { fg = util.blend(c.fg, c.bg, 0.1) },

    Directory = { fg = c.purple, bold = true },
    Error = { fg = c.red_bright, bold = true },
    WarningMsg = { fg = c.orange, bold = true },
    MoreMsg = { fg = c.green, bold = true },
    Question = { fg = c.blue, bold = true },

    QuickFixLine = { bg = util.blend(c.yellow, c.bg, 0.15) },
    WildMenu = { fg = c.orange, bg = c.gray_dark, bold = true },

    SpellBad = { undercurl = true, sp = c.red_bright },
    SpellCap = { undercurl = true, sp = c.blue },
    SpellLocal = { undercurl = true, sp = c.green },
    SpellRare = { undercurl = true, sp = c.purple },
  }

  return groups
end

return M


