<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/icon.svg" width="80" alt="Tarn">
  <h1>Tarn Theme for Windows Terminal</h1>
  <p>A dark color scheme for <a href="https://aka.ms/terminal">Windows Terminal</a> inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.</p>

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
| Black      | `#1e293b` | ![](https://img.shields.io/badge/-%231e293b-1e293b?style=flat-square) |
| Red        | `#fc8181` | ![](https://img.shields.io/badge/-%23fc8181-fc8181?style=flat-square) |
| Green      | `#68d391` | ![](https://img.shields.io/badge/-%2368d391-68d391?style=flat-square) |
| Yellow     | `#f6ad55` | ![](https://img.shields.io/badge/-%23f6ad55-f6ad55?style=flat-square) |
| Blue       | `#67b8e3` | ![](https://img.shields.io/badge/-%2367b8e3-67b8e3?style=flat-square) |
| Purple     | `#9cdcfe` | ![](https://img.shields.io/badge/-%239cdcfe-9cdcfe?style=flat-square) |
| Cyan       | `#56d4d4` | ![](https://img.shields.io/badge/-%2356d4d4-56d4d4?style=flat-square) |
| White      | `#e2e8f0` | ![](https://img.shields.io/badge/-%23e2e8f0-e2e8f0?style=flat-square) |

## Installation

1. Open **Windows Terminal → Settings** (`Ctrl+,`)
2. Click **Open JSON file** (bottom-left)
3. Add the contents of `tarn.json` to the `"schemes"` array:

```json
{
  "schemes": [
    {
      "name": "Tarn",
      "background": "#1e293b",
      ...
    }
  ]
}
```

4. Set the scheme in your profile:

```json
{
  "profiles": {
    "defaults": {
      "colorScheme": "Tarn"
    }
  }
}
```

## License

[MIT](../LICENSE)
