-- This config is to change the font style of the Catppuccin markdown titles to bold.
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      custom_highlights = function(colors)
        return {
          ["@markup.heading.1.markdown"] = { fg = colors.red, style = { "bold" } },
          ["@markup.heading.2.markdown"] = { fg = colors.peach, style = { "bold" } },
          ["@markup.heading.3.markdown"] = { fg = colors.yellow, style = { "bold" } },
          ["@markup.heading.4.markdown"] = { fg = colors.green, style = { "bold" } },
          ["@markup.heading.5.markdown"] = { fg = colors.sapphire, style = { "bold" } },
          ["@markup.heading.6.markdown"] = { fg = colors.lavender, style = { "bold" } },

          -- Plain text with hex color (white)
          ["@spell.markdown"] = { fg = "#ffffff" },
        }
      end,
    },
  },
}
