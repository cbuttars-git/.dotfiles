--[[

   ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗   ██╗     ██╗   ██╗ █████╗ 
  ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝   ██║     ██║   ██║██╔══██╗
  ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗   ██║     ██║   ██║███████║
  ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║   ██║     ██║   ██║██╔══██║
  ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║██╗███████╗╚██████╔╝██║  ██║
   ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

  Filename: options.lua
  Owned by: Christopher S. BUttars

]]

local o = vim.opt

o.autoindent = true                                                             -- https://neovim.io/doc/user/options.html#'autoindent' | Copy indent from current line when starting a new line
o.background = "dark"                                                           -- https://neovim.io/doc/user/options.html#'background' | When set to "dark" or "light", adjusts the default color groups for	that background type.
o.backspace = "indent,eol,start"                                                -- https://neovim.io/doc/user/options.html#'backspace' | Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert	mode.  This is a list of items, separated by commas. Each item allowsa way to backspace over something
o.clipboard:append("unnamedplus")                                               -- https://neovim.io/doc/user/options.html#'clipboard' | 
o.colorcolumn = {80,120,160,200}                                                -- https://neovim.io/doc/user/options.html#'colorcolumn' | Comma-separated list of screen columns that are highlighted with ColorColumn hl-ColorColumn.  Useful to align text.  Will make screen redrawing slower. 
o.cursorline = true                                                             -- https://neovim.io/doc/user/options.html#'cursorline' | Highlight the text line of the cursor with CursorLine hl-CursorLine. Useful to easily spot the cursor.  Will make screen redrawing slower.
o.expandtab = true                                                              -- https://neovim.io/doc/user/options.html#'expandtab' | In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.ignorecase = true                                                             -- https://neovim.io/doc/user/options.html#'ignorecase' | Ignore case in search patterns, cmdline-completion, whensearching in the tags file
o.number = true                                                                 -- https://neovim.io/doc/user/options.html#'number' | Print the line number in front of each line.  When the 'n' option is excluded from 'cpoptions' a wrapped line will not use the column of	line numbers.
o.relativenumber = true                                                         -- https://neovim.io/doc/user/options.html#'relativenumber' | Show the line number relative to the line with the cursor in front of	each line.
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,terminal"  -- https://neovim.io/doc/user/options.html#'sessionoptions' | Changes the effect of the :mksession command.  It is a comma-separated list of words. Each word enables saving and restoring something
o.shiftwidth = 2                                                                -- https://neovim.io/doc/user/options.html#'shiftwidth' | Number of spaces to use for each step of (auto)indent.
o.signcolumn = "yes"                                                            -- https://neovim.io/doc/user/options.html#'signcolumn' | When and how to draw the signcolumn.
o.smartcase = true                                                              -- https://neovim.io/doc/user/options.html#'smartcase' | Override the 'ignorecase' option if the search pattern contains upper case characters.
o.splitbelow = true                                                             -- https://neovim.io/doc/user/options.html#'splitbelow' | When on, splitting a window will put the new window below the current one.
o.splitright = true                                                             -- https://neovim.io/doc/user/options.html#'splitright' | When on, splitting a window will put the new window right of the current one.
o.swapfile = false                                                              -- https://neovim.io/doc/user/options.html#'swapfile' | Use a swapfile for the buffer.  This option can be reset when a	swapfile is not wanted for a specific buffer.
o.tabstop = 2                                                                   -- https://neovim.io/doc/user/options.html#'tabstop' | Number of spaces that a <Tab> in the file counts for.
o.termguicolors = true                                                          -- https://neovim.io/doc/user/options.html#'termguicolors' | Enables 24-bit RGB color in the TUI.  Uses "gui" :highlight attributes instead of "cterm" attributes. guifg Requires an ISO-8613-3 compatible terminal.
o.wrap = false                                                                  -- https://neovim.io/doc/user/options.html#'wrap' | This option changes how text is displayed.  It doesn't change the text in the buffer, see 'textwidth' for that. When on, lines longer than the width of the window will wrap and displaying continues on the next line. When off lines will not wrap and only part of long lines will be displayed.
