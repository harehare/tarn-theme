# Visual QA

Use this checklist before releasing a palette change. Open the language samples in
both available appearances where applicable, then inspect the editor UI rather than
only syntax colors.

- Open `sample.ts`, `sample.lua`, and `sample.mq`; check comments, keywords, strings,
  properties, types, and invalid syntax.
- Check active and inactive selections, search matches, bracket pairs, indent guides,
  line numbers, and focus borders.
- Trigger diagnostics, Git added/modified/deleted lines, completion, hover, and a diff
  view.
- Run an ANSI color test in every terminal port and verify that black, blue, cyan,
  magenta, and their bright variants remain distinct.
- Capture refreshed screenshots when a change intentionally alters the visual design.

Run `node scripts/check-theme.mjs` for the mechanical checks; this file covers the
interactive review that requires the target application.
