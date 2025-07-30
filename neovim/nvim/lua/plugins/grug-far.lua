--  Use tag 1.6.3 for nvim 0.10
return {
  "MagicDuck/grug-far.nvim",
  tag = "1.6.3",
  config = function()
    require("grug-far").setup({})
  end,
}
