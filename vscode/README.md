<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/vscode/icon.png" width="80" alt="Tarn">
  <h1>Tarn Theme for VS Code</h1>
  <p>A dark theme inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.</p>

  [![VS Code Marketplace](https://img.shields.io/visual-studio-marketplace/v/harehare.tarn-theme?style=flat-square&label=Marketplace&logo=visualstudiocode&logoColor=white&color=67b8e3&labelColor=1e293b)](https://marketplace.visualstudio.com/items?itemName=harehare.tarn-theme)
  [![License: MIT](https://img.shields.io/badge/license-MIT-67b8e3?style=flat-square&labelColor=1e293b)](LICENSE)
</div>

---

<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/ts.png" width="32%" alt="TypeScript">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/lua.png" width="32%" alt="Lua">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/mq.png" width="32%" alt="mq">
</div>

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

## Installation

### Via Marketplace

1. Open **Extensions** (`Ctrl+Shift+X` / `Cmd+Shift+X`)
2. Search for **Tarn**
3. Click **Install**
4. Open Command Palette → **Preferences: Color Theme** → select **Tarn**

### Via CLI

```bash
code --install-extension harehare.tarn-theme
```

### Manual Build

```bash
cd vscode
npx @vscode/vsce package
code --install-extension tarn-theme-*.vsix
```

## License

[MIT](LICENSE)
