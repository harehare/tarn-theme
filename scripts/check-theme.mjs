import { readFileSync } from "node:fs";
import { resolve } from "node:path";

const root = resolve(import.meta.dirname, "..");
const read = (file) => readFileSync(resolve(root, file), "utf8");
const palette = JSON.parse(read("palette.json"));
const fail = (message) => {
  throw new Error(message);
};
const expect = (file, pattern, description) => {
  if (!pattern.test(read(file))) fail(`${file}: missing ${description}`);
};

for (const file of [
  "palette.json",
  "vscode/package.json",
  "vscode/themes/tarn-color-theme.json",
  "vscode/themes/tarn-light-color-theme.json",
  "windows-terminal/tarn.json",
  "zed/tarn.json",
  "jetbrains/tarn.theme.json",
]) {
  JSON.parse(read(file));
}

const { ansi, syntax } = palette;
const ansiNames = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"];
const brightAnsiNames = ansiNames.map((name) => `bright${name[0].toUpperCase()}${name.slice(1)}`);
const checkAnsi = (actual, file) => {
  for (const name of [...ansiNames, ...brightAnsiNames]) {
    if (actual[name]?.toLowerCase() !== ansi[name]) {
      fail(`${file}: ${name} must be ${ansi[name]}`);
    }
  }
};
const keyValues = (file, header) => {
  const block = read(file).match(new RegExp(`${header}([\\s\\S]*?)(?=\\n\\[|$)`));
  if (!block) fail(`${file}: missing ${header}`);
  return Object.fromEntries([...block[1].matchAll(/^\s*(\w+)\s*=\s*"(#\w+)"/gm)].map(([, key, value]) => [key, value.toLowerCase()]));
};

const alacritty = {
  ...keyValues("alacritty/tarn.toml", "\\[colors.normal\\]"),
  ...Object.fromEntries(Object.entries(keyValues("alacritty/tarn.toml", "\\[colors.bright\\]")).map(([key, value]) => [`bright${key[0].toUpperCase()}${key.slice(1)}`, value])),
};
checkAnsi(alacritty, "alacritty/tarn.toml");

const weztermColors = (key) => {
  const block = read("wezterm/tarn.toml").match(new RegExp(`${key} = \\[([\\s\\S]*?)\\]`));
  if (!block) fail(`wezterm/tarn.toml: missing ${key}`);
  return [...block[1].matchAll(/"(#[0-9a-f]{6})"/gi)].map(([, color]) => color.toLowerCase());
};
checkAnsi(Object.fromEntries([
  ...ansiNames.map((name, index) => [name, weztermColors("ansi")[index]]),
  ...brightAnsiNames.map((name, index) => [name, weztermColors("brights")[index]]),
]), "wezterm/tarn.toml");

const windows = JSON.parse(read("windows-terminal/tarn.json"));
checkAnsi(Object.fromEntries([
  ...ansiNames.map((name) => [name === "magenta" ? name : name, windows[name === "magenta" ? "purple" : name]?.toLowerCase()]),
  ...brightAnsiNames.map((name) => [name, windows[name === "brightMagenta" ? "brightPurple" : name]?.toLowerCase()]),
]), "windows-terminal/tarn.json");

const vscode = JSON.parse(read("vscode/themes/tarn-color-theme.json")).colors;
checkAnsi(Object.fromEntries([
  ...ansiNames.map((name) => [name, vscode[`terminal.ansi${name[0].toUpperCase()}${name.slice(1)}`]?.toLowerCase()]),
  ...brightAnsiNames.map((name) => [name, vscode[`terminal.ansi${name[0].toUpperCase()}${name.slice(1)}`]?.toLowerCase()]),
]), "vscode/themes/tarn-color-theme.json");

const zed = JSON.parse(read("zed/tarn.json")).themes.find((theme) => theme.appearance === "dark").style;
checkAnsi(Object.fromEntries([
  ...ansiNames.map((name) => [name, zed[`terminal.ansi.${name}`]?.toLowerCase()]),
  ...brightAnsiNames.map((name) => [name, zed[`terminal.ansi.${name.replace(/[A-Z]/g, (letter) => `_${letter.toLowerCase()}`)}`]?.toLowerCase()]),
]), "zed/tarn.json");

const zellij = Object.fromEntries([...read("zellij/tarn.kdl").matchAll(/^\s*(black|red|green|yellow|blue|magenta|cyan|white)\s+"(#[0-9a-f]{6})"/gmi)].map(([, name, value]) => [name, value.toLowerCase()]));
for (const name of ansiNames) {
  if (zellij[name] !== ansi[name]) fail(`zellij/tarn.kdl: ${name} must be ${ansi[name]}`);
}

const iTerm = read("iterm2/tarn.itermcolors");
for (const [number, name] of ansiNames.entries()) {
  expect("iterm2/tarn.itermcolors", new RegExp(`Ansi ${number}: .*\\(${ansi[name]}\\)`), `canonical ANSI ${name}`);
  expect("iterm2/tarn.itermcolors", new RegExp(`Ansi ${number + 8}: .*\\(${ansi[brightAnsiNames[number]]}\\)`), `canonical ANSI ${brightAnsiNames[number]}`);
  for (const [index, component] of ["Red", "Green", "Blue"].entries()) {
    for (const [offset, color] of [[0, ansi[name]], [8, ansi[brightAnsiNames[number]]]]) {
      const block = iTerm.match(new RegExp(`<key>Ansi ${number + offset} Color</key>\\s*<dict>([\\s\\S]*?)</dict>`));
      const actual = block?.[1].match(new RegExp(`<key>${component} Component</key>\\s*<real>([\\d.]+)</real>`))?.[1];
      const expected = (Number.parseInt(color.slice(1 + index * 2, 3 + index * 2), 16) / 255).toFixed(6);
      if (actual !== expected) fail(`iterm2/tarn.itermcolors: ANSI ${number + offset} ${component} must be ${expected}`);
    }
  }
}

for (const file of ["colors/tarn.lua", "nvim/colors/tarn.lua", "helix/tarn.toml"]) {
  expect(file, new RegExp(syntax.comment.slice(1)), "accessible comment color");
}
expect("vscode/themes/tarn-color-theme.json", new RegExp(`\\"comment\\"[^\\n]+${syntax.comment}`), "accessible semantic comment color");
expect("zed/tarn.json", new RegExp(`\\"comment\\"[^\\n]+${syntax.comment}`), "accessible comment color");
expect("jetbrains/tarn.icls", new RegExp(`FOREGROUND\\" value=\\"${syntax.comment.slice(1)}`), "accessible comment color");
for (const section of ["text_selected", "table_cell_selected", "list_selected"]) {
  expect("zellij/tarn.kdl", new RegExp(`${section} \\{\\s*base\\s+226 232 240`), `readable ${section} text`);
}
const lightSemantic = JSON.parse(read("vscode/themes/tarn-light-color-theme.json")).semanticTokenColors;
if (lightSemantic?.function !== "#0e7490" || lightSemantic?.keyword !== "#7c3aed") {
  fail("vscode/themes/tarn-light-color-theme.json: incomplete Light semantic token colors");
}

if (read("colors/tarn.lua") !== read("nvim/colors/tarn.lua")) {
  fail("colors/tarn.lua and nvim/colors/tarn.lua must remain identical");
}

console.log("Theme validation passed.");
