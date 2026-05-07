# Tarn Theme for Neovim

A dark Neovim colorscheme inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.

Supports Treesitter, LSP diagnostics, Telescope, nvim-cmp, nvim-tree, which-key, and more.

## Color Palette

| Role | Color | |
|------|-------|-|
| Background | `#1e293b` | Deep navy |
| Keywords | `#67b8e3` | Steel blue |
| Functions | `#56d4d4` | Teal |
| Strings | `#89ddff` | Light azure |
| Numbers | `#de935f` | Warm orange |
| Variables | `#9cdcfe` | Sky blue |
| Properties | `#67e8f9` | Bright teal |
| Comments | `#6b7a90` | Muted slate |
| Operators | `#94a3b8` | Soft gray |

## Requirements

- Neovim 0.8+
- `termguicolors` enabled

## Installation

**lazy.nvim**

```lua
{
  "harehare/tarn-theme",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tarn")
  end,
}
```

**packer.nvim**

```lua
use {
  "harehare/tarn-theme",
  config = function()
    vim.cmd("colorscheme tarn")
  end,
}
```

**vim-plug**

```vim
Plug 'harehare/tarn-theme'
colorscheme tarn
```

## License

MIT © [harehare](https://github.com/harehare)
