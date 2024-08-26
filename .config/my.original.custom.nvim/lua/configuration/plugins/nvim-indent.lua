--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗      ██╗███╗   ██╗██████╗ ███████╗███╗   ██╗████████╗██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║      ██║████╗  ██║██╔══██╗██╔════╝████╗  ██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║██╔██╗ ██║██║  ██║█████╗  ██╔██╗ ██║   ██║   ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║██║╚██╗██║██║  ██║██╔══╝  ██║╚██╗██║   ██║   ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║██║ ╚████║██████╔╝███████╗██║ ╚████║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/lukas-reineke/indent-blankline.nvim
  Plugin:   lukas-reineke/indent-blankline.nvim
  Filename: nvim-indent.lua
  Owned by: Christopher S. Buttars

  This plugin adds indentation guides to Neovim. It uses Neovim's virtual text feature and no conceal.

]]

local returnValue = {
  "lukas-reineke/indent-blankline.nvim",
  event = { 
    "BufReadPre",
    "BufNewFile",
  },
  main = "ibl",
  opts = {
    indent = {
			char = "⎜", 
		},
  },
}

return returnValue
