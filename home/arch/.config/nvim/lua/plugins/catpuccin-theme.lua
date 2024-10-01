-- return {
--   -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
--   "catppuccin/nvim",

--   config = function()
--     require("catppuccin").setup({
--       flavour = "macchiato",
--     })

--     -- require("catppuccin").load()
--   end,
-- }

return {
  {
    "LazyVim/LazyVim",
    lazy = false,
    priority = 1000,

    opts = {
      colorscheme = function()
        -- require("catppuccin").load()
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- no_italic = true,
      term_colors = true,
      transparent_background = false,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
}
