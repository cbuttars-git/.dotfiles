--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗      ██╗     ██╗   ██╗ █████╗ ██╗     ██╗███╗   ██╗███████╗   ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║      ██║     ██║   ██║██╔══██╗██║     ██║████╗  ██║██╔════╝   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║     ██║   ██║███████║██║     ██║██╔██╗ ██║█████╗     ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║     ██║   ██║██╔══██║██║     ██║██║╚██╗██║██╔══╝     ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ███████╗╚██████╔╝██║  ██║███████╗██║██║ ╚████║███████╗██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      
  Plugin:   nvim-lualine/lualine.nvim
  Filename: nvim.lualine.lua 
  Owned by: Christopher S. Buttars


]]

local returnValue = {
  "nvim-lualine/lualine.nvim",
  dependencies = { 
    "nvim-tree/nvim-web-devicons"
  },

  config = function()
  require("lualine").setup({
    options = {
      icons_enabled = true,
      theme = "catppuccin-mocha",
      component_separators = { 
        left = "",
        right = ""
      },
      section_separators = { 
        left = "",
        right = ""
      },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 750,
        tabline = 750,
        winbar = 750,
      },
    },
    sections = {
      lualine_a = {
        "mode"
      },
      lualine_b = {
        "branch",
        "diff",
        "diagnostics"
      },
      lualine_c = {
        "filename"
      },
      lualine_x = {
        "encoding",
        "fileformat",
        "filetype"
      },
      lualine_y = {
        "progress"
      },
      lualine_z = {
        "location"
      }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        "filename"
      },
      lualine_x = {
        "location"
      },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
    })
  end,
}

return returnValue
