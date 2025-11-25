local palette = require("lcars.palette")
local util = require("lcars.util")

local M = {}

function M.get(opts)
  opts = opts or {}
  local c = palette.colors
  local transparent = opts.transparent or false
  local bg = transparent and "NONE" or c.bg

  local groups = {
    NvimTreeNormal = { fg = c.fg, bg = bg },
    NvimTreeNormalNC = { fg = c.fg, bg = bg },
    NvimTreeWinSeparator = { fg = c.purple, bg = bg },
    NvimTreeCursorLine = { bg = util.blend(c.lilac, c.bg, 0.12) },

    NvimTreeRootFolder = { fg = c.pink, bold = true },
    NvimTreeFolderName = { fg = c.purple },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeOpenedFolderName = { fg = c.purple, bold = true },
    NvimTreeSymlinkFolderName = { fg = c.cyan },

    NvimTreeFileName = { fg = c.fg },
    NvimTreeOpenedFile = { fg = c.fg, bold = true },
    NvimTreeModifiedFile = { fg = c.link },
    NvimTreeSpecialFile = { fg = c.orange, bold = true },
    NvimTreeExecFile = { fg = c.green, bold = true },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeImageFile = { fg = c.lilac },

    NvimTreeIndentMarker = { fg = util.blend(c.lilac, c.bg, 0.3) },
    NvimTreeBookmark = { fg = c.pink },
    NvimTreeBookmarkIcon = { fg = c.pink },

    NvimTreeGitDirty = { fg = c.link },
    NvimTreeGitStaged = { fg = c.green },
    NvimTreeGitMerge = { fg = c.orange },
    NvimTreeGitRenamed = { fg = c.link },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.red },
    NvimTreeGitIgnored = { fg = c.gray },
  }

  return groups
end

return M

