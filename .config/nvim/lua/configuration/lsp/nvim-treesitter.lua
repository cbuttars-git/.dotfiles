--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗   ████████╗██████╗ ███████╗███████╗███████╗██╗████████╗████████╗███████╗██████╗    ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║   ╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔════╝██║╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║   ██████╔╝█████╗  █████╗  ███████╗██║   ██║      ██║   █████╗  ██████╔╝   ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║   ██╔══██╗██╔══╝  ██╔══╝  ╚════██║██║   ██║      ██║   ██╔══╝  ██╔══██╗   ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║   ██║  ██║███████╗███████╗███████║██║   ██║      ██║   ███████╗██║  ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/nvim-treesitter/nvim-treesitter
  Plugin:   nvim-treesitter/nvim-treesitter
  Filename: nvim-treesitter.lua
  Owned by: Christopher S. Buttars

]]

local returnValue = {
 "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  
  config = function()
    local options = require("configuration.core.nvim-treesitter-options")
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
       autotag = {
        enable = true,
      },
      ensure_installed = options.ensure_installed,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}

return returnValue
