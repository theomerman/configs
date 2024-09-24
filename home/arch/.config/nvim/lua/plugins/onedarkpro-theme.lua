return {
  -- Lazy
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000, -- Ensure it loads first
  config = function()
    require("onedarkpro").setup({

      colors = {
        -- red = "#ff5656",
        green = "#43ff00",
        purple = "#ff00ff",
        orange = "#ff8700",
        yellow = "#ffe690",
      },
      styles = {
        comments = "italic",
      },
      options = {
        cursorline = true,
      },
    })

    -- require("onedarkpro").load()
    vim.cmd("colorscheme onedark_dark")
  end,
  -- somewhere in your config:
}
