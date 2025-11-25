local palette = require("lcars.palette")

local M = {}

function M.get()
  local c = palette.colors

  return {
    normal = {
      a = { fg = c.purple, bg = c.gray_darker },
      b = { fg = c.lilac, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    insert = {
      a = { fg = c.green, bg = c.gray_darker },
      b = { fg = c.lilac, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    visual = {
      a = { fg = c.pink, bg = c.gray_darker },
      b = { fg = c.lilac, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    replace = {
      a = { fg = c.red, bg = c.gray_darker },
      b = { fg = c.lilac, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    command = {
      a = { fg = c.orange, bg = c.gray_darker },
      b = { fg = c.lilac, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    inactive = {
      a = { fg = c.gray, bg = c.bg },
      b = { fg = c.gray, bg = c.bg },
      c = { fg = c.gray, bg = c.bg },
    },
  }
end

return M
