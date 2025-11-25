local M = {}

M.meta = {
  name = "LCARS",
  style = "dark",
}

-- Core palette extracted from the VS Code LCARS theme
M.colors = {
  bg = "#000000",
  fg = "#f5f6fa",

  purple = "#cc88ff",
  blue = "#7788ff",
  blue_bright = "#4455ff",
  cyan = "#88ccff",
  cyan_bright = "#30a6ff",
  orange = "#ff7700",
  yellow = "#ffcc66",
  yellow_bright = "#ffcc33",
  pink = "#ffbbaa",
  lilac = "#ddbbff",
  green = "#33cc99",
  green_bright = "#00ab72",
  red = "#dd4444",
  red_bright = "#ff2200",
  gray = "#666688",
  gray_dark = "#333344",
  gray_darker = "#111118",

  link = "#ffaa00",
}

-- Common UI colors (approximations of VS Code UI mapping)
M.ui = {
  cursor = "#ffcc66",
  selection = "#aaaaff",
  selection_bg = "#aaaaff55",
  selection_inactive_bg = "#66668855",
  line_highlight = "#1f162633", -- derived from lilac with low alpha
  border = "#666688",
  float_border = "#ddbbff88",
  pmenu_bg = "#000000",
  pmenu_sel_bg = "#ffbbaa",
}

-- Terminal palette from lcars-color-theme.json (terminal.ansi*)
M.terminal = {
  color_0 = "#111118",   -- black
  color_1 = "#ff5555",   -- red
  color_2 = "#33cc99",   -- green
  color_3 = "#ffaa90",   -- yellow
  color_4 = "#7788ff",   -- blue
  color_5 = "#cc88ff",   -- magenta
  color_6 = "#88ccff",   -- cyan
  color_7 = "#f5f6fa",   -- white
  color_8 = "#333344",   -- bright black
  color_9 = "#ff2200",   -- bright red
  color_10 = "#00ab72",  -- bright green
  color_11 = "#ffcc33",  -- bright yellow
  color_12 = "#4455ff",  -- bright blue
  color_13 = "#db2698",  -- bright magenta
  color_14 = "#30a6ff",  -- bright cyan
  color_15 = "#cc88ff",  -- bright white (theme uses lilac here)
}

return M


