--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗       █████╗ ██╗   ██╗████████╗ ██████╗ ███████╗███████╗███████╗███████╗██╗ ██████╗ ███╗   ██╗   ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║      ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔════╝██╔════╝██╔════╝██╔════╝██║██╔═══██╗████╗  ██║   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗███████║██║   ██║   ██║   ██║   ██║███████╗█████╗  ███████╗███████╗██║██║   ██║██╔██╗ ██║   ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██╔══██║██║   ██║   ██║   ██║   ██║╚════██║██╔══╝  ╚════██║╚════██║██║██║   ██║██║╚██╗██║   ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║  ██║╚██████╔╝   ██║   ╚██████╔╝███████║███████╗███████║███████║██║╚██████╔╝██║ ╚████║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚══════╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/rmagatti/auto-session
  Plugin:   rmagatti/auto-session
  Filename: nvim-autosession.lua
  Owned by: Christopher S. Buttars

  AutoSession takes advantage of Neovim's existing session management capabilities to provide seamless automatic
  session management.

]]

local returnValue = {
  "rmagatti/auto-session",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/",
        "~/Development",
        "~/Downloads",
        "~/Documents",
        "~/Desktop/"
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { 
      desc = "Restore session for cwd"
    })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", {
      desc = "Save session for auto session root dir" 
    })
  end,
}

return returnValue
