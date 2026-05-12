<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/icon.svg" width="80" alt="Tarn">
  <h1>Tarn Theme for WezTerm</h1>
  <p>A dark theme for <a href="https://wezfurlong.org/wezterm">WezTerm</a> inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.</p>

  [![License: MIT](https://img.shields.io/badge/license-MIT-67b8e3?style=flat-square&labelColor=1e293b)](../LICENSE)
</div>

---

## Color Palette

| Role       | Hex       | Preview |
| ---------- | --------- | ------- |
| Background | `#1e293b` | ![](https://img.shields.io/badge/-%231e293b-1e293b?style=flat-square) |
| Foreground | `#e2e8f0` | ![](https://img.shields.io/badge/-%23e2e8f0-e2e8f0?style=flat-square) |
| Cursor     | `#67b8e3` | ![](https://img.shields.io/badge/-%2367b8e3-67b8e3?style=flat-square) |
| Selection  | `#32404f` | ![](https://img.shields.io/badge/-%2332404f-32404f?style=flat-square) |
| Tab Bar    | `#2a3444` | ![](https://img.shields.io/badge/-%232a3444-2a3444?style=flat-square) |

## Installation

```bash
mkdir -p ~/.config/wezterm/colors
cp tarn.toml ~/.config/wezterm/colors/tarn.toml
```

Then set the color scheme in `~/.config/wezterm/wezterm.lua`:

```lua
local config = wezterm.config_builder()
config.color_scheme = "Tarn"
return config
```

## License

[MIT](../LICENSE)
