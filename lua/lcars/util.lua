local M = {}

local function clamp(x, min, max)
  if x < min then return min end
  if x > max then return max end
  return x
end

function M.hex_to_rgb(hex)
  if not hex or hex == "" then return 0, 0, 0 end
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

function M.rgb_to_hex(r, g, b)
  r = clamp(math.floor(r + 0.5), 0, 255)
  g = clamp(math.floor(g + 0.5), 0, 255)
  b = clamp(math.floor(b + 0.5), 0, 255)
  return string.format("#%02x%02x%02x", r, g, b)
end

-- Blend two colors: alpha is from 0.0 (bg only) to 1.0 (fg only)
function M.blend(fg, bg, alpha)
  local fr, fg_, fb = M.hex_to_rgb(fg)
  local br, bg_, bb = M.hex_to_rgb(bg)
  local r = (alpha * fr) + ((1 - alpha) * br)
  local g = (alpha * fg_) + ((1 - alpha) * bg_)
  local b = (alpha * fb) + ((1 - alpha) * bb)
  return M.rgb_to_hex(r, g, b)
end

-- Lighten by percentage (0..1)
function M.lighten(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  local nr = r + (255 - r) * amount
  local ng = g + (255 - g) * amount
  local nb = b + (255 - b) * amount
  return M.rgb_to_hex(nr, ng, nb)
end

-- Darken by percentage (0..1)
function M.darken(hex, amount)
  local r, g, b = M.hex_to_rgb(hex)
  local nr = r * (1 - amount)
  local ng = g * (1 - amount)
  local nb = b * (1 - amount)
  return M.rgb_to_hex(nr, ng, nb)
end

-- Apply highlight groups from a table of { [group] = { fg=.., bg=.., bold=true, ... } }
function M.apply_highlights(groups)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

-- Helper to link one group to another
function M.link(group, target)
  vim.api.nvim_set_hl(0, group, { link = target, default = false })
end

return M


