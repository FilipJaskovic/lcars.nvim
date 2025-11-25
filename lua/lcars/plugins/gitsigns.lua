local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors

  local groups = {
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.link },
    GitSignsDelete = { fg = c.red },

    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.link },
    GitSignsDeleteNr = { fg = c.red },

    GitSignsAddLn = { fg = c.green },
    GitSignsChangeLn = { fg = c.link },
    GitSignsDeleteLn = { fg = c.red },

    GitSignsAddPreview = { fg = c.green },
    GitSignsDeletePreview = { fg = c.red },

    GitSignsCurrentLineBlame = { fg = c.gray, italic = true },
    GitSignsAddInline = { bg = util.blend(c.green, c.bg, 0.25) },
    GitSignsDeleteInline = { bg = util.blend(c.red, c.bg, 0.25) },
    GitSignsChangeInline = { bg = util.blend(c.link, c.bg, 0.25) },
  }

  return groups
end

return M

