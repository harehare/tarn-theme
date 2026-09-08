# Changelog

## Unreleased

- **palette**: add `palette.json` as the canonical role palette and CI validation for
  JSON, ANSI mappings, key accessibility colors, and Neovim entry-point parity.
- **terminals**: align the ANSI palette across all terminal ports, including distinct
  teal cyan and violet magenta values.
- **zellij**: restore readable selected text and use the canonical ANSI palette.
- **syntax**: raise dark-theme comment contrast from 3.35:1 to 4.56:1.
- **VS Code**: add semantic token colors to Tarn Light.
- **docs**: correct palette tables and document Light-theme availability in VS Code
  and Zed.
- **jetbrains**: add a UI theme (`tarn.theme.json`) alongside the existing editor
  color scheme, plus `build.sh` to package both as an installable plugin.

## 0.1.6 — 2026-07-13

- **VS Code**: add Tarn Light and expand Marketplace search keywords.

## 0.1.5 — 2026-06-15

- **VS Code**: expand syntax, semantic-token, bracket-pair, and minimap coverage.

## 0.1.4 — 2026-05-27

- **ports**: align syntax roles and improve terminal ANSI black contrast.

## 0.1.0 — Initial release
