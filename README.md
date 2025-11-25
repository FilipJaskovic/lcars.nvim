# LCARS.nvim

A Star Trek LCARS-inspired colorscheme for Neovim, ported from the [VS Code LCARS Theme](https://marketplace.visualstudio.com/items?itemName=hayzey.lcars-theme).

![LCARS Theme]()

## Features

- Full Treesitter support
- LSP semantic token highlighting (Neovim 0.9+)
- Diagnostic styling with virtual text and underlines
- Plugin integrations: Telescope, nvim-tree, gitsigns, nvim-cmp, which-key
- Lualine theme included
- Terminal colors configured
- Transparency support

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "FilipJaskovic/lcars.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("lcars").setup()
    vim.cmd.colorscheme("lcars")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "FilipJaskovic/lcars.nvim",
  config = function()
    require("lcars").setup()
    vim.cmd.colorscheme("lcars")
  end,
}
```

### Manual

Clone the repository to your Neovim packages directory:

```bash
git clone https://github.com/FilipJaskovic/lcars.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/lcars.nvim
```

Then in your `init.lua`:

```lua
require("lcars").setup()
vim.cmd.colorscheme("lcars")
```

## Configuration

```lua
require("lcars").setup({
  -- Enable transparent background
  transparent = false,

  -- Use italic for comments
  italic_comments = true,

  -- Use bold for keywords
  bold_keywords = false,

  -- Plugin integrations (all enabled by default)
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
})
```

## Lualine

To use the LCARS theme with lualine:

```lua
require("lualine").setup({
  options = {
    theme = require("lcars").lualine(),
  },
})
```

## Palette

| Color       | Hex       | Usage                                  |
|-------------|-----------|----------------------------------------|
| Background  | `#000000` | Editor background                      |
| Foreground  | `#f5f6fa` | Default text                           |
| Purple      | `#cc88ff` | Variables, tags, headings              |
| Blue        | `#7788ff` | Functions, methods                     |
| Cyan        | `#88ccff` | Operators, regex, builtins             |
| Orange      | `#ff7700` | Strings                                |
| Yellow      | `#ffcc66` | Constants, numbers, attributes         |
| Pink        | `#ffbbaa` | Keywords, control flow                 |
| Lilac       | `#ddbbff` | Types, classes, namespaces             |
| Green       | `#33cc99` | Success, additions, info               |
| Red         | `#dd4444` | Errors, deletions                      |
| Gray        | `#666688` | Comments, muted text                   |

## Credits

- Original VS Code theme by [hayzey](https://github.com/hayzey), Neovim port by [FilipJaskovic](https://github.com/FilipJaskovic)
- Color palette based on [LCARS colors](https://www.thelcars.com/colors.php)
- Star Trek and LCARS are trademarks of CBS Studios Inc.

## License

MIT License - see [LICENSE](LICENSE) for details.

