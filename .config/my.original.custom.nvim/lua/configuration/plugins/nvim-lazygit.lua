--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗      ██╗      █████╗ ███████╗██╗   ██╗ ██████╗ ██╗████████╗██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██╔════╝ ██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║     ███████║  ███╔╝  ╚████╔╝ ██║  ███╗██║   ██║   ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║     ██╔══██║ ███╔╝    ╚██╔╝  ██║   ██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ███████╗██║  ██║███████╗   ██║   ╚██████╔╝██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/kdheepak/lazygit.nvim
  Plugin:   kdheepak/lazygit.nvim
  Filename: nvim-lazygit.lua
  Owned by: Christopher S. Buttars

  Plugin for calling lazygit from within neovim.

]]

local returnValue = {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },

  config = function()
    require("telescope").load_extension("lazygit")
    keys = {
      {
        "<leader>lg",
        "<cmd>LazyGit<cr>",
        desc = "Open lazy git",
      },
    }
  end
}

return returnValue
