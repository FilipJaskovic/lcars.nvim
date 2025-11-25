local palette = require("lcars.palette")

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
    NvimTreeCursorLine = { bg = c.gray_dark },

    NvimTreeRootFolder = { fg = c.pink },
    NvimTreeFolderName = { fg = c.purple },
    NvimTreeFolderIcon = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.gray },
    NvimTreeOpenedFolderName = { fg = c.purple },
    NvimTreeSymlinkFolderName = { fg = c.cyan },

    NvimTreeFileName = { fg = c.fg },
    NvimTreeOpenedFile = { fg = c.fg },
    NvimTreeModifiedFile = { fg = c.link },
    NvimTreeSpecialFile = { fg = c.orange },
    NvimTreeExecFile = { fg = c.green },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeImageFile = { fg = c.lilac },

    NvimTreeIndentMarker = { fg = c.gray_dark },
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
