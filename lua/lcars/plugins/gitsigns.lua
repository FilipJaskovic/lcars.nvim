local palette = require("lcars.palette")

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
    GitSignsAddInline = { bg = "#33cc9944" },
    GitSignsDeleteInline = { bg = "#dd444444" },
    GitSignsChangeInline = { bg = "#ffaa0044" },
  }

  return groups
end

return M

