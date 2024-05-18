return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "catppuccin/nvim",

  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
    })

    -- require("catppuccin").load()
  end,
}
