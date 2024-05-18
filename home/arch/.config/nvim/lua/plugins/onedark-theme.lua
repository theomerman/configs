return {

  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({

      style = "deep",
      -- colors = {
      --   green = "#74d046", -- redefine an existing color
      --   purple = "#d74cf0",
      --   bright_green = "#d7ff00",
      -- },
    })
    require("onedark").load()
  end,
}
