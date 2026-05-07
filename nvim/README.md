<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/icon.svg" width="80" alt="Tarn">
  <h1>Tarn Theme for Neovim</h1>
  <p>A dark colorscheme inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.</p>

  [![Neovim](https://img.shields.io/badge/Neovim-0.8%2B-67b8e3?style=flat-square&logo=neovim&logoColor=white&labelColor=1e293b)](https://neovim.io)
  [![License: MIT](https://img.shields.io/badge/license-MIT-67b8e3?style=flat-square&labelColor=1e293b)](LICENSE)
</div>

---

<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/ts.png" width="32%" alt="TypeScript">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/lua.png" width="32%" alt="Lua">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/mq.png" width="32%" alt="mq">
</div>

## Plugin Support

- **Treesitter** — semantic syntax highlighting
- **LSP** — diagnostics, references, and hover
- **Telescope** — picker UI colors
- **nvim-cmp** — completion menu
- **nvim-tree / neo-tree** — file explorer
- **Which-key** — key hint popup
- **Git** — diff and sign colors

## Color Palette

| Role       | Hex       | Preview |
| ---------- | --------- | ------- |
| Background | `#1e293b` | ![](https://img.shields.io/badge/-%231e293b-1e293b?style=flat-square) |
| Keywords   | `#67b8e3` | ![](https://img.shields.io/badge/-%2367b8e3-67b8e3?style=flat-square) |
| Functions  | `#56d4d4` | ![](https://img.shields.io/badge/-%2356d4d4-56d4d4?style=flat-square) |
| Strings    | `#89ddff` | ![](https://img.shields.io/badge/-%2389ddff-89ddff?style=flat-square) |
| Numbers    | `#de935f` | ![](https://img.shields.io/badge/-%23de935f-de935f?style=flat-square) |
| Variables  | `#9cdcfe` | ![](https://img.shields.io/badge/-%239cdcfe-9cdcfe?style=flat-square) |
| Properties | `#67e8f9` | ![](https://img.shields.io/badge/-%2367e8f9-67e8f9?style=flat-square) |
| Comments   | `#6b7a90` | ![](https://img.shields.io/badge/-%236b7a90-6b7a90?style=flat-square) |
| Operators  | `#94a3b8` | ![](https://img.shields.io/badge/-%2394a3b8-94a3b8?style=flat-square) |

## Requirements

- Neovim 0.8+
- `termguicolors` enabled

## Installation

### lazy.nvim

```lua
{
  "harehare/tarn-theme",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tarn")
  end,
}
```

### packer.nvim

```lua
use {
  "harehare/tarn-theme",
  config = function()
    vim.cmd("colorscheme tarn")
  end,
}
```

### vim-plug

```vim
Plug 'harehare/tarn-theme'
colorscheme tarn
```

## License

[MIT](LICENSE)
