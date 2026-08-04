<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/icon.svg" width="80" alt="Tarn">
  <h1>Tarn Theme for JetBrains IDEs</h1>
  <p>A dark theme for JetBrains IDEs inspired by the stillness of a high-altitude glacial lake — deep navy depths, steel blue shimmers, and teal-to-azure syntax highlighting.</p>

  [![License: MIT](https://img.shields.io/badge/license-MIT-67b8e3?style=flat-square&labelColor=1e293b)](../LICENSE)
</div>

---

<div align="center">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/ts.png" width="32%" alt="TypeScript">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/lua.png" width="32%" alt="Lua">
  <img src="https://raw.githubusercontent.com/harehare/tarn-theme/main/screenshots/mq.png" width="32%" alt="mq">
</div>

Two pieces, two ways to install:

- `tarn.theme.json` — the **UI theme** (tool windows, tabs, dialogs). Only installable as a plugin.
- `tarn.icls` — the **editor color scheme**. Importable on its own.

Requires a JetBrains IDE on 2024.1 or newer.

## Installation

### UI theme + editor scheme

```bash
./build.sh   # → tarn-theme-0.1.0.zip
```

**Settings** (`Ctrl+Alt+S` / `Cmd+,`) → **Plugins** → ⚙ → **Install Plugin from Disk…** →
select the zip → restart → **Appearance & Behavior → Appearance** → **Theme: Tarn**.
This switches the editor color scheme too.

### Editor scheme only

**Settings** → **Editor → Color Scheme** → ⚙ → **Import Scheme…** → select `tarn.icls`.

> Don't do both — you'd end up with two schemes named **Tarn**.

<details>
<summary>Color palette</summary>

| Role       | Hex       | Preview |
| ---------- | --------- | ------- |
| Background | `#1e293b` | ![](https://img.shields.io/badge/-%231e293b-1e293b?style=flat-square) |
| Keywords   | `#67b8e3` | ![](https://img.shields.io/badge/-%2367b8e3-67b8e3?style=flat-square) |
| Functions  | `#56d4d4` | ![](https://img.shields.io/badge/-%2356d4d4-56d4d4?style=flat-square) |
| Strings    | `#89ddff` | ![](https://img.shields.io/badge/-%2389ddff-89ddff?style=flat-square) |
| Numbers    | `#de935f` | ![](https://img.shields.io/badge/-%23de935f-de935f?style=flat-square) |
| Variables  | `#9cdcfe` | ![](https://img.shields.io/badge/-%239cdcfe-9cdcfe?style=flat-square) |
| Properties | `#67e8f9` | ![](https://img.shields.io/badge/-%2367e8f9-67e8f9?style=flat-square) |
| Comments   | `#7e8fa6` | ![](https://img.shields.io/badge/-%237e8fa6-7e8fa6?style=flat-square) |
| Operators  | `#94a3b8` | ![](https://img.shields.io/badge/-%2394a3b8-94a3b8?style=flat-square) |

</details>

<details>
<summary>Development</summary>

`build.sh` needs only `zip` — a theme plugin has no compiled code, so there is no
Gradle or JDK involved.

- `tarn.theme.json` — named colors in `colors`, component keys in `ui`, platform icon
  recoloring in `icons.ColorPalette`. Unrecognized keys are ignored, so one file can
  cover several platform versions.
- `tarn.icls` — edit by hand, or export over it from the IDE (**Editor → Color Scheme**
  → ⚙ → **Export…**). `build.sh` copies it into the plugin as `tarn.xml`: the platform
  ignores an `editorScheme` path ending in `.icls`, though the format is identical.

After a change, bump `<version>` in `plugin.xml` (the IDE won't replace a plugin with
the same version), re-run `./build.sh`, and reinstall. `build/` and the `.zip` are
gitignored.

</details>

## License

[MIT](../LICENSE)
