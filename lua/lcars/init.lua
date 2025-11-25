local M = {}

M.config = {
  transparent = false,
  italic_comments = true,
  bold_keywords = false,
  plugins = {
    treesitter = true,
    lsp = true,
    diagnostics = true,
    telescope = true,
    gitsigns = true,
    nvimtree = true,
    cmp = true,
    whichkey = true,
  },
}

function M.setup(opts)
  opts = vim.tbl_deep_extend("force", M.config, opts or {})
  M.config = opts

  -- Check for termguicolors
  if not vim.o.termguicolors then
    vim.notify("lcars.nvim: termguicolors is not set. Colors may not display correctly.", vim.log.levels.WARN)
  end

  -- Reset existing highlights
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "lcars"

  local palette = require("lcars.palette")
  local util = require("lcars.util")
  local highlights = require("lcars.highlights")

  -- Apply core UI highlights
  util.apply_highlights(highlights.get(opts))

  -- Apply built-in syntax highlights
  M.apply_syntax(opts)

  -- Apply terminal colors
  M.apply_terminal_colors()

  -- Apply plugin highlights
  if opts.plugins.treesitter then
    local treesitter = require("lcars.plugins.treesitter")
    util.apply_highlights(treesitter.get(opts))
  end

  if opts.plugins.lsp then
    local lsp = require("lcars.plugins.lsp")
    util.apply_highlights(lsp.get(opts))
  end

  if opts.plugins.diagnostics then
    local diagnostics = require("lcars.plugins.diagnostics")
    util.apply_highlights(diagnostics.get(opts))
  end

  if opts.plugins.telescope then
    local telescope = require("lcars.plugins.telescope")
    util.apply_highlights(telescope.get(opts))
  end

  if opts.plugins.gitsigns then
    local gitsigns = require("lcars.plugins.gitsigns")
    util.apply_highlights(gitsigns.get(opts))
  end

  if opts.plugins.nvimtree then
    local nvimtree = require("lcars.plugins.nvimtree")
    util.apply_highlights(nvimtree.get(opts))
  end

  if opts.plugins.cmp then
    local cmp = require("lcars.plugins.cmp")
    util.apply_highlights(cmp.get(opts))
  end

  if opts.plugins.whichkey then
    local whichkey = require("lcars.plugins.whichkey")
    util.apply_highlights(whichkey.get(opts))
  end
end

function M.apply_syntax(opts)
  local c = require("lcars.palette").colors
  local util = require("lcars.util")

  local italic = opts.italic_comments and { italic = true } or {}
  local bold = opts.bold_keywords and { bold = true } or {}

  local groups = {
    -- Standard Vim syntax groups
    Comment = vim.tbl_extend("force", { fg = c.gray }, italic),
    Constant = { fg = c.yellow },
    String = { fg = c.orange },
    Character = { fg = c.orange },
    Number = { fg = c.yellow },
    Boolean = { fg = c.yellow },
    Float = { fg = c.yellow },

    Identifier = { fg = c.purple },
    Function = { fg = c.blue },

    Statement = vim.tbl_extend("force", { fg = c.pink }, bold),
    Conditional = vim.tbl_extend("force", { fg = c.pink }, bold),
    Repeat = vim.tbl_extend("force", { fg = c.pink }, bold),
    Label = { fg = c.pink },
    Operator = { fg = c.fg },
    Keyword = vim.tbl_extend("force", { fg = c.pink }, bold),
    Exception = vim.tbl_extend("force", { fg = c.pink }, bold),

    PreProc = { fg = c.pink },
    Include = { fg = c.pink },
    Define = { fg = c.pink },
    Macro = { fg = c.blue },
    PreCondit = { fg = c.pink },

    Type = { fg = c.lilac },
    StorageClass = { fg = c.pink },
    Structure = { fg = c.lilac },
    Typedef = { fg = c.lilac },

    Special = { fg = c.cyan },
    SpecialChar = { fg = c.cyan },
    Tag = { fg = c.purple },
    Delimiter = { fg = c.fg },
    SpecialComment = vim.tbl_extend("force", { fg = c.gray }, italic),
    Debug = { fg = c.pink },

    Underlined = { fg = c.link, underline = true },
    Ignore = { fg = c.gray },
    Error = { fg = c.red_bright, bold = true },
    Todo = { fg = c.cyan, bold = true },

    -- Diff
    DiffAdd = { fg = c.green, bg = util.blend(c.green, c.bg, 0.15) },
    DiffChange = { fg = c.link, bg = util.blend(c.link, c.bg, 0.15) },
    DiffDelete = { fg = c.red, bg = util.blend(c.red, c.bg, 0.15) },
    DiffText = { fg = c.link, bg = util.blend(c.link, c.bg, 0.3), bold = true },

    -- Git
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.link },
    diffOldFile = { fg = c.red },
    diffNewFile = { fg = c.green },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.gray },
    diffIndexLine = { fg = c.purple },

    -- Health
    healthError = { fg = c.red_bright },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.orange },
  }

  util.apply_highlights(groups)
end

function M.apply_terminal_colors()
  local t = require("lcars.palette").terminal

  vim.g.terminal_color_0 = t.color_0
  vim.g.terminal_color_1 = t.color_1
  vim.g.terminal_color_2 = t.color_2
  vim.g.terminal_color_3 = t.color_3
  vim.g.terminal_color_4 = t.color_4
  vim.g.terminal_color_5 = t.color_5
  vim.g.terminal_color_6 = t.color_6
  vim.g.terminal_color_7 = t.color_7
  vim.g.terminal_color_8 = t.color_8
  vim.g.terminal_color_9 = t.color_9
  vim.g.terminal_color_10 = t.color_10
  vim.g.terminal_color_11 = t.color_11
  vim.g.terminal_color_12 = t.color_12
  vim.g.terminal_color_13 = t.color_13
  vim.g.terminal_color_14 = t.color_14
  vim.g.terminal_color_15 = t.color_15
end

-- Return lualine theme for external use
function M.lualine()
  return require("lcars.plugins.lualine").get()
end

return M

