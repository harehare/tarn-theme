vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "tarn"
vim.o.background = "dark"
vim.o.termguicolors = true

local c = {
  bg        = "#1e293b",
  bg_panel  = "#2a3444",
  bg_dark   = "#232e3d",
  bg_sel    = "#3a4f64",
  border    = "#4a5568",
  fg        = "#e2e8f0",
  fg_muted  = "#94a3b8",
  fg_dim    = "#6b7a90",
  accent    = "#67b8e3",
  accent_hi = "#85d4ff",
  keyword   = "#67b8e3",
  func      = "#56d4d4",
  string    = "#89ddff",
  number    = "#de935f",
  variable  = "#9cdcfe",
  escape    = "#67e8f9",
  operator  = "#94a3b8",
  comment   = "#6b7a90",
  constant  = "#85d4ff",
  success   = "#68d391",
  warning   = "#f6ad55",
  error     = "#fc8181",
  diff_add  = "#1e3a2f",
  diff_del  = "#3a1e1e",
  diff_chg  = "#2a3020",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Editor UI ────────────────────────────────────────────────────────────────
hl("Normal",          { bg = c.bg,       fg = c.fg })
hl("NormalFloat",     { bg = c.bg_dark,  fg = c.fg })
hl("NormalNC",        { bg = c.bg,       fg = c.fg })
hl("FloatBorder",     { bg = c.bg_dark,  fg = c.border })
hl("FloatTitle",      { bg = c.bg_dark,  fg = c.accent, bold = true })

hl("Cursor",          { bg = c.accent,   fg = c.bg })
hl("CursorLine",      { bg = c.bg_panel })
hl("CursorLineNr",    { fg = c.fg_muted, bold = true })
hl("LineNr",          { fg = c.border })
hl("SignColumn",      { bg = c.bg,       fg = c.border })
hl("ColorColumn",     { bg = c.bg_panel })

hl("Visual",          { bg = c.bg_sel })
hl("VisualNOS",       { bg = c.bg_sel })
hl("Search",          { bg = c.bg_sel,   fg = c.accent_hi, bold = true })
hl("IncSearch",       { bg = c.accent,   fg = c.bg,        bold = true })
hl("CurSearch",       { bg = c.accent,   fg = c.bg,        bold = true })
hl("Substitute",      { bg = c.bg_sel,   fg = c.warning })

hl("StatusLine",      { bg = c.bg_panel, fg = c.fg })
hl("StatusLineNC",    { bg = c.bg_dark,  fg = c.fg_muted })
hl("WinBar",          { bg = c.bg,       fg = c.fg_muted })
hl("WinBarNC",        { bg = c.bg,       fg = c.border })
hl("WinSeparator",    { fg = c.border })

hl("TabLine",         { bg = c.bg,       fg = c.fg_muted })
hl("TabLineSel",      { bg = c.bg_panel, fg = c.fg,      bold = true })
hl("TabLineFill",     { bg = c.bg })

hl("Pmenu",           { bg = c.bg_dark,  fg = c.fg })
hl("PmenuSel",        { bg = c.bg_sel,   fg = c.fg,      bold = true })
hl("PmenuSbar",       { bg = c.bg_dark })
hl("PmenuThumb",      { bg = c.border })
hl("PmenuMatch",      { fg = c.accent,   bold = true })
hl("PmenuMatchSel",   { fg = c.accent_hi, bold = true })

hl("Folded",          { bg = c.bg_panel, fg = c.fg_muted })
hl("FoldColumn",      { bg = c.bg,       fg = c.border })

hl("MatchParen",      { bg = c.bg_sel,   fg = c.accent,  bold = true })

hl("NonText",         { fg = c.border })
hl("SpecialKey",      { fg = c.border })
hl("Whitespace",      { fg = c.bg_panel })
hl("EndOfBuffer",     { fg = c.bg })

hl("Directory",       { fg = c.accent })
hl("Title",           { fg = c.accent,   bold = true })
hl("Question",        { fg = c.accent })
hl("MoreMsg",         { fg = c.accent })
hl("ModeMsg",         { fg = c.fg,       bold = true })

hl("ErrorMsg",        { fg = c.error,    bold = true })
hl("WarningMsg",      { fg = c.warning })

hl("SpellBad",        { undercurl = true, sp = c.error })
hl("SpellCap",        { undercurl = true, sp = c.warning })
hl("SpellRare",       { undercurl = true, sp = c.accent })
hl("SpellLocal",      { undercurl = true, sp = c.success })

-- ── Syntax ───────────────────────────────────────────────────────────────────
hl("Comment",         { fg = c.comment,  italic = true })
hl("Todo",            { fg = c.warning,  bold = true })

hl("Keyword",         { fg = c.keyword,  bold = true })
hl("Conditional",     { fg = c.keyword,  bold = true })
hl("Repeat",          { fg = c.keyword,  bold = true })
hl("Label",           { fg = c.keyword })
hl("Exception",       { fg = c.keyword,  bold = true })
hl("Statement",       { fg = c.keyword })
hl("Include",         { fg = c.keyword,  bold = true })
hl("Define",          { fg = c.keyword })
hl("Macro",           { fg = c.keyword })
hl("PreProc",         { fg = c.keyword })
hl("PreCondit",       { fg = c.keyword })
hl("StorageClass",    { fg = c.keyword,  bold = true })
hl("Structure",       { fg = c.keyword })
hl("Typedef",         { fg = c.keyword })
hl("Type",            { fg = c.accent })

hl("Function",        { fg = c.func })
hl("Identifier",      { fg = c.variable })

hl("String",          { fg = c.string })
hl("Character",       { fg = c.string })
hl("SpecialChar",     { fg = c.escape })

hl("Number",          { fg = c.number })
hl("Float",           { fg = c.number })
hl("Boolean",         { fg = c.constant })
hl("Constant",        { fg = c.constant })

hl("Operator",        { fg = c.operator })
hl("Delimiter",       { fg = c.operator })
hl("Special",         { fg = c.variable })

hl("Error",           { fg = c.error,    bold = true })
hl("Underlined",      { underline = true })

-- ── Treesitter ───────────────────────────────────────────────────────────────
hl("@comment",                    { link = "Comment" })
hl("@comment.todo",               { fg = c.warning, bold = true })

hl("@keyword",                    { link = "Keyword" })
hl("@keyword.control",            { link = "Keyword" })
hl("@keyword.function",           { fg = c.keyword, bold = true })
hl("@keyword.operator",           { fg = c.operator })
hl("@keyword.import",             { fg = c.keyword, bold = true })
hl("@keyword.return",             { fg = c.keyword, bold = true })

hl("@function",                   { link = "Function" })
hl("@function.call",              { link = "Function" })
hl("@function.builtin",           { fg = c.func })
hl("@function.method",            { link = "Function" })
hl("@function.method.call",       { link = "Function" })

hl("@variable",                   { fg = c.variable })
hl("@variable.builtin",           { fg = c.constant })
hl("@variable.parameter",         { fg = c.variable, italic = true })
hl("@variable.member",            { fg = c.variable })

hl("@string",                     { link = "String" })
hl("@string.escape",              { fg = c.escape })
hl("@string.special",             { fg = c.escape })

hl("@number",                     { link = "Number" })
hl("@number.float",               { link = "Float" })
hl("@boolean",                    { link = "Boolean" })
hl("@constant",                   { link = "Constant" })
hl("@constant.builtin",           { fg = c.constant })

hl("@type",                       { fg = c.accent })
hl("@type.builtin",               { fg = c.accent, italic = true })

hl("@property",                   { fg = c.variable })
hl("@attribute",                  { fg = c.func })

hl("@operator",                   { link = "Operator" })
hl("@punctuation.delimiter",      { fg = c.operator })
hl("@punctuation.bracket",        { fg = c.operator })
hl("@punctuation.special",        { fg = c.escape })

hl("@tag",                        { fg = c.error })
hl("@tag.attribute",              { fg = c.func })
hl("@tag.delimiter",              { fg = c.operator })

hl("@markup.heading",             { fg = c.accent, bold = true })
hl("@markup.bold",                { fg = c.fg, bold = true })
hl("@markup.italic",              { fg = c.fg, italic = true })
hl("@markup.underline",           { underline = true })
hl("@markup.strikethrough",       { strikethrough = true })
hl("@markup.raw",                 { fg = c.string })
hl("@markup.link",                { fg = c.accent, underline = true })
hl("@markup.link.url",            { fg = c.accent, underline = true })
hl("@markup.list",                { fg = c.accent })
hl("@markup.quote",               { fg = c.fg_muted, italic = true })

-- ── Diagnostics ──────────────────────────────────────────────────────────────
hl("DiagnosticError",             { fg = c.error })
hl("DiagnosticWarn",              { fg = c.warning })
hl("DiagnosticInfo",              { fg = c.accent })
hl("DiagnosticHint",              { fg = c.success })
hl("DiagnosticOk",                { fg = c.success })
hl("DiagnosticUnderlineError",    { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn",     { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineInfo",     { undercurl = true, sp = c.accent })
hl("DiagnosticUnderlineHint",     { undercurl = true, sp = c.success })
hl("DiagnosticVirtualTextError",  { fg = c.error,   bg = c.diff_del, italic = true })
hl("DiagnosticVirtualTextWarn",   { fg = c.warning, bg = c.diff_chg, italic = true })
hl("DiagnosticVirtualTextInfo",   { fg = c.accent,  italic = true })
hl("DiagnosticVirtualTextHint",   { fg = c.success, italic = true })
hl("DiagnosticSignError",         { fg = c.error })
hl("DiagnosticSignWarn",          { fg = c.warning })
hl("DiagnosticSignInfo",          { fg = c.accent })
hl("DiagnosticSignHint",          { fg = c.success })

-- ── LSP ──────────────────────────────────────────────────────────────────────
hl("LspReferenceText",            { bg = c.bg_sel })
hl("LspReferenceRead",            { bg = c.bg_sel })
hl("LspReferenceWrite",           { bg = c.bg_sel, underline = true })
hl("LspInlayHint",                { fg = c.fg_dim, italic = true })
hl("LspSignatureActiveParameter", { bg = c.bg_sel, fg = c.accent, bold = true })

-- ── Git ───────────────────────────────────────────────────────────────────────
hl("DiffAdd",                     { bg = c.diff_add })
hl("DiffDelete",                  { bg = c.diff_del })
hl("DiffChange",                  { bg = c.diff_chg })
hl("DiffText",                    { bg = c.bg_sel })
hl("GitSignsAdd",                 { fg = c.success })
hl("GitSignsChange",              { fg = c.warning })
hl("GitSignsDelete",              { fg = c.error })

-- ── Telescope ────────────────────────────────────────────────────────────────
hl("TelescopeNormal",             { bg = c.bg_dark,  fg = c.fg })
hl("TelescopeBorder",             { bg = c.bg_dark,  fg = c.border })
hl("TelescopePromptNormal",       { bg = c.bg_panel, fg = c.fg })
hl("TelescopePromptBorder",       { bg = c.bg_panel, fg = c.border })
hl("TelescopePromptTitle",        { bg = c.bg_panel, fg = c.accent, bold = true })
hl("TelescopePreviewTitle",       { bg = c.bg_dark,  fg = c.accent, bold = true })
hl("TelescopeResultsTitle",       { bg = c.bg_dark,  fg = c.accent, bold = true })
hl("TelescopeSelection",          { bg = c.bg_sel,   fg = c.fg })
hl("TelescopeMatching",           { fg = c.accent,   bold = true })

-- ── nvim-cmp ─────────────────────────────────────────────────────────────────
hl("CmpItemAbbr",                 { fg = c.fg })
hl("CmpItemAbbrMatch",            { fg = c.accent,    bold = true })
hl("CmpItemAbbrMatchFuzzy",       { fg = c.accent_hi, bold = true })
hl("CmpItemKindFunction",         { fg = c.func })
hl("CmpItemKindKeyword",          { fg = c.keyword })
hl("CmpItemKindVariable",         { fg = c.variable })
hl("CmpItemKindConstant",         { fg = c.constant })
hl("CmpItemKindField",            { fg = c.variable })
hl("CmpItemKindProperty",         { fg = c.variable })
hl("CmpItemKindMethod",           { fg = c.func })
hl("CmpItemKindText",             { fg = c.fg_muted })
hl("CmpItemMenu",                 { fg = c.fg_dim, italic = true })

-- ── Which-key ────────────────────────────────────────────────────────────────
hl("WhichKey",                    { fg = c.accent })
hl("WhichKeyGroup",               { fg = c.keyword, bold = true })
hl("WhichKeyDesc",                { fg = c.fg })
hl("WhichKeySeparator",           { fg = c.border })
hl("WhichKeyFloat",               { bg = c.bg_dark })
hl("WhichKeyBorder",              { fg = c.border })

-- ── nvim-tree / neo-tree ──────────────────────────────────────────────────────
hl("NvimTreeNormal",              { bg = c.bg,       fg = c.fg })
hl("NvimTreeEndOfBuffer",         { bg = c.bg,       fg = c.bg })
hl("NvimTreeRootFolder",          { fg = c.accent,   bold = true })
hl("NvimTreeFolderIcon",          { fg = c.accent })
hl("NvimTreeFolderName",          { fg = c.fg })
hl("NvimTreeOpenedFolderName",    { fg = c.accent })
hl("NvimTreeFileName",            { fg = c.fg })
hl("NvimTreeOpenedFile",          { fg = c.accent })
hl("NvimTreeGitDirty",            { fg = c.warning })
hl("NvimTreeGitNew",              { fg = c.success })
hl("NvimTreeGitDeleted",          { fg = c.error })
hl("NvimTreeIndentMarker",        { fg = c.border })
