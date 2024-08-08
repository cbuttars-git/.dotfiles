--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗      ██████╗ ██╗   ██╗███████╗███████╗███████╗██████╗ ██╗     ██╗███╗   ██╗███████╗   ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║      ██╔══██╗██║   ██║██╔════╝██╔════╝██╔════╝██╔══██╗██║     ██║████╗  ██║██╔════╝   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██████╔╝██║   ██║█████╗  █████╗  █████╗  ██████╔╝██║     ██║██╔██╗ ██║█████╗     ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██╔══██╗██║   ██║██╔══╝  ██╔══╝  ██╔══╝  ██╔══██╗██║     ██║██║╚██╗██║██╔══╝     ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██████╔╝╚██████╔╝██║     ██║     ███████╗██║  ██║███████╗██║██║ ╚████║███████╗██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═════╝  ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/akinsho/bufferline.nvim
  Plugin:   akinsho/bufferline.nvim
  Filename: nvim-bufferline.lua
  Owned by: Christopher S. Buttars

  A snazzy 💅 buffer line (with tabpage integration) for Neovim built using lua.

]]

local returnValue = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim",
  },
  after = "catppuccin",
  version = "*",

  config = function()
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        mode = "tabs",
      },
    })
  end
}

return returnValue
