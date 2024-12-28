-- block [highlight search] --
vim.keymap.set("n",         "<Esc>",            "<cmd>nohlsearch<CR>") -- this guy removes the highlights from search
-- end --

-- block [lsp] --
vim.opt.signcolumn          = "yes" -- errors or warnings from lsp leaves a marker on the column
vim.keymap.set("n",          "[d",                 vim.diagnostic.goto_prev)
vim.keymap.set("n",          "]d",                 vim.diagnostic.goto_next)
-- end --

-- block [highlight on yank] --
vim.api.nvim_create_autocmd("TextYankPost", { callback = function() vim.highlight.on_yank() end, })
-- end --

-- block --
vim.keymap.set("n",         "<leader><leader>", vim.cmd.so)

-- disabled netrw for Oil, no Ex in Oil
-- vim.keymap.set("n",         "<leader>pv", 	    "<cmd>Ex<CR>") -- "<cmd> ... <CR>" improves performance

vim.keymap.set("n",         "U",                "<C-r>");
vim.keymap.set("n",         "<leader>cc",       ":!")
vim.keymap.set("n",         "<leader>s",        [[:%s/]])
vim.keymap.set("v",         "<leader>s",        [[:s/]])
vim.keymap.set("n",         "<leader>xa",       "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n",         "<leader>xr",       "<cmd>!chmod -x %<CR>", { silent = true })

vim.keymap.set("v",         "J",                ":m '>+1<CR>gv=gv")
vim.keymap.set("v",         "K",                ":m '<-2<CR>gv=gv")
vim.keymap.set({"n", "v"},  "Y",                [["+y]])

vim.keymap.set("n",         "<leader>h",        ":help ")
vim.keymap.set("n",         "<leader>o",        ":split ")
-- end --
