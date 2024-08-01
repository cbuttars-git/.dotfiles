--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗   ████████╗██╗  ██╗███████╗███╗   ███╗███████╗     ██████╗ █████╗ ████████╗██████╗ ██████╗ ██╗   ██╗ ██████╗ ██████╗██╗███╗   ██╗   ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║   ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝    ██╔════╝██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██║   ██║██╔════╝██╔════╝██║████╗  ██║   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║   ███████║█████╗  ██╔████╔██║█████╗█████╗██║     ███████║   ██║   ██████╔╝██████╔╝██║   ██║██║     ██║     ██║██╔██╗ ██║   ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝╚════╝██║     ██╔══██║   ██║   ██╔═══╝ ██╔═══╝ ██║   ██║██║     ██║     ██║██║╚██╗██║   ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗    ╚██████╗██║  ██║   ██║   ██║     ██║     ╚██████╔╝╚██████╗╚██████╗██║██║ ╚████║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝     ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝      ╚═════╝  ╚═════╝ ╚═════╝╚═╝╚═╝  ╚═══╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/catppuccin/nvim
  Plugin:   catppuccin/nvim
  Filename: nvim-theme-catppuccin.lua
  Owned by: Christopher S. Buttars

]]

local returnValue = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
 
  config = function()
  require("catppuccin").setup({
    flavour = "mocha", 
    background = { 
      light = "mocha",
       dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,w
    },
    no_italic = false,
    no_bold = false,
    no_underline = false,
    styles = {
      comments = {
        "italic"
      },
      conditionals = {
        "italic"
      },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = true,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    },
  })
--  vim.cmd.colorscheme "catppuccin"
end,
}

return returnValue