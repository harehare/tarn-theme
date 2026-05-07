-- Tarn colorscheme for Neovim
local M = {}

local palette = {
  bg      = "#1e293b", -- deep navy
  keyword = "#67b8e3", -- steel blue
  func    = "#56d4d4", -- teal
  string  = "#89ddff", -- light azure
  number  = "#de935f", -- warm orange
  comment = "#6b7a90", -- muted slate
}

local function clarity(depth)
  if depth > 40 then
    return depth * 0.87
  end
  return depth
end
function M.setup(opts)
  opts = opts or {}
  vim.cmd("colorscheme tarn")
  for role, color in pairs(palette) do
    vim.api.nvim_set_hl(0, role, { fg = color })
  end
  return clarity(opts.depth or 42)
end
return M
