<div align="center">
  <img src="icon.svg" width="80" alt="Tarn">
  <h1>Tarn</h1>
  <p>A dark color theme for VS Code and Neovim, inspired by the stillness of a high-altitude glacial lake: deep navy depths, steel blue shimmers, and teal-to-azure light across the surface.</p>
  <p>Also used in the [mq playground](https://mqlang.org/playground).</p>
</div>

<div align="center">
  <img src="screenshots/ts.png" width="32%" alt="TypeScript">
  <img src="screenshots/lua.png" width="32%" alt="Lua">
  <img src="screenshots/mq.png" width="32%" alt="mq">
</div>

## Color Palette

| Role       | Color     |             |
| ---------- | --------- | ----------- |
| Background | `#1e293b` | Deep navy   |
| Keywords   | `#67b8e3` | Steel blue  |
| Functions  | `#56d4d4` | Teal        |
| Strings    | `#89ddff` | Light azure |
| Numbers    | `#de935f` | Warm orange |
| Variables  | `#9cdcfe` | Sky blue    |
| Properties | `#67e8f9` | Bright teal |
| Comments   | `#6b7a90` | Muted slate |
| Operators  | `#94a3b8` | Soft gray   |

## Ports

| Editor  | Path                   | Install                                                                                |
| ------- | ---------------------- | -------------------------------------------------------------------------------------- |
| VS Code | [`vscode/`](./vscode/) | [Marketplace](https://marketplace.visualstudio.com/items?itemName=harehare.tarn-theme) |
| Neovim  | [`nvim/`](./nvim/)     | see below                                                                              |
| Zed     | [`zed/`](./zed/)       | see below                                                                              |

## Neovim

The `colors/tarn.lua` is at the repository root, so any plugin manager can install it directly.

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

## Zed

Copy the theme file to your Zed themes directory:

```bash
cp zed/tarn.json ~/.config/zed/themes/
```

Then open the theme selector (`Cmd+Shift+P` → `theme selector: toggle`) and choose **Tarn**.

## VS Code

**Marketplace**

Search for **Tarn** in the Extensions panel, or install via CLI:

```bash
code --install-extension harehare.tarn-theme
```

**Manual build**

```bash
cd vscode
npx @vscode/vsce package
code --install-extension tarn-theme-*.vsix
```

## License

MIT
