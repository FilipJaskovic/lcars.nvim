local palette = require("lcars.palette")

local M = {}

function M.get()
  local c = palette.colors

  return {
    normal = {
      a = { fg = c.gray_darker, bg = c.purple, gui = "bold" },
      b = { fg = c.fg, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    insert = {
      a = { fg = c.gray_darker, bg = c.green, gui = "bold" },
      b = { fg = c.fg, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    visual = {
      a = { fg = c.gray_darker, bg = c.pink, gui = "bold" },
      b = { fg = c.fg, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    replace = {
      a = { fg = c.gray_darker, bg = c.red, gui = "bold" },
      b = { fg = c.fg, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    command = {
      a = { fg = c.gray_darker, bg = c.orange, gui = "bold" },
      b = { fg = c.fg, bg = c.gray_dark },
      c = { fg = c.fg, bg = c.bg },
    },
    inactive = {
      a = { fg = c.gray, bg = c.bg, gui = "bold" },
      b = { fg = c.gray, bg = c.bg },
      c = { fg = c.gray, bg = c.bg },
    },
  }
end

return M

