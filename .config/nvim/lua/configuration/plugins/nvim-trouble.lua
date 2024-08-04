--[[

  ███╗   ██╗██╗   ██╗██╗███╗   ███╗   ████████╗██████╗  ██████╗ ██╗   ██╗██████╗ ██╗     ███████╗   ██╗     ██╗   ██╗ █████╗ 
  ████╗  ██║██║   ██║██║████╗ ████║   ╚══██╔══╝██╔══██╗██╔═══██╗██║   ██║██╔══██╗██║     ██╔════╝   ██║     ██║   ██║██╔══██╗
  ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║   ██████╔╝██║   ██║██║   ██║██████╔╝██║     █████╗     ██║     ██║   ██║███████║
  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║   ██╔══██╗██║   ██║██║   ██║██╔══██╗██║     ██╔══╝     ██║     ██║   ██║██╔══██║
  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║   ██║  ██║╚██████╔╝╚██████╔╝██████╔╝███████╗███████╗██╗███████╗╚██████╔╝██║  ██║
  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Url:      https://github.com/folke/trouble.nvim
  Plugin:   folke/trouble.nvim
  Filename: nvim.trouble.lua
  Owned by: Christopher S. Buttars

  A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.

]]

local returnValue = {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim"
  },
  opts = {
    focus = true,
  },
  cmd = "Trouble",
  keys = {
    { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
    { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
  },
}

return returnValue
