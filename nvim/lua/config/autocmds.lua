-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds herelocal api = vim.api

-- Desactivar el corrector automático en archivos markdown
local api = vim.api
api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.spell = false
  end,
})

-- Activar corrector ortografico y se agrega el diccionario en espanol
vim.opt.spell = true -- Habilita el corrector ortográfico
vim.opt.spelllang = { "es", "en" } -- Configura los idiomas del corrector ortográfico

--------------------------------------------------------------------------
-- The following modifications are from the VSCODE COLORSCHEME only:

-- Cambia el color de fondo de la terminal
vim.cmd([[
    highlight NormalFloat guibg=#000000
]])

local function enhance_markdown_highlighting()
  -- Create a slightly different background for code blocks
  vim.api.nvim_set_hl(0, "markdownCode", { bg = "#2a2a3a" }) -- Adjust color to match your theme
  vim.api.nvim_set_hl(0, "markdownCodeBlock", { bg = "#2a2a3a" })
  vim.api.nvim_set_hl(0, "@markup.raw.markdown_inline", { bg = "#2a2a3a" })

  -- Make code block delimiters more visible
  vim.api.nvim_set_hl(0, "@markup.raw.delimiter.markdown", { fg = "#79dce9" }) -- Bright color for ```
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = enhance_markdown_highlighting,
  group = vim.api.nvim_create_augroup("CustomMarkdownHighlight", { clear = true }),
})

-- Run once on startup to apply to current colorscheme
enhance_markdown_highlighting()
