-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Configuración de monokai
local monokai = require("monokai")
local palette = monokai.classic

-- Ignore this if you don't use monokai
monokai.setup({
  custom_hlgroups = {
    ["@markup.raw.markdown_inline"] = {
      fg = "#f75408", -- Color del texto
      bg = palette.base4, -- Color de fondo
      -- bg = "#79867e22", -- Color de fondo
    },
    ["@markup.list.markdown"] = {
      fg = palette.yellow,
    },
    ["@markup.list.checked.markdown"] = {
      fg = palette.yellow,
    },
  },
})
