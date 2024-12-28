-- block [disable netrw] --
vim.g.netrw                 = 0
vim.g.netrw_browse_split    = 0
vim.g.netrw_banner          = 0
vim.g.netrw_winsize         = 0
-- end --

-- block --
vim.g.mapleader             = " "
vim.g.maplocalleader        = "\\"
-- end --

-- block --
vim.wo.wrap               	= false
-- end --

-- block --
vim.opt.mouse               = ""
vim.opt.nu 		            = true
vim.opt.relativenumber 	    = true
vim.opt.tabstop 	        = 4
vim.opt.softtabstop 	    = 4
vim.opt.shiftwidth 	        = 4
vim.opt.expandtab 	        = true
vim.opt.smartindent 	    = false -- this mofo fucks up perfectly aligned indentation if true
vim.opt.scrolloff           = 15
vim.opt.updatetime          = 50
vim.opt.swapfile            = false
vim.opt.backup              = false
vim.opt.undofile            = true
vim.opt.undodir             = vim.fn.stdpath("data") .. "/undodir"
-- vim.opt.clipboard
vim.opt.splitright          = true
vim.opt.splitbelow          = true
vim.opt.cursorline          = true
-- end --

-- block [highlight search] --
vim.opt.hlsearch            = true  -- this one keeps the search result highlighted, the nohlsearch removes the marker
-- end --
