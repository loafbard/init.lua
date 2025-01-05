-- block [highlight search] --
vim.keymap.set("n",         "<Esc>",            "<cmd>nohlsearch<CR>") -- this guy removes the highlights from search
-- end --

-- block [lsp] --
vim.keymap.set("n",          "[d",              vim.diagnostic.goto_prev)
vim.keymap.set("n",          "]d",              vim.diagnostic.goto_next)
vim.keymap.set("n",          "<leader>e",       vim.diagnostic.open_float)
-- end --

-- block [highlight on yank] --
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("weezer-highlight-yank", { clear = true }), -- this line is supposed to prevent mal-event-listening
    callback = function() vim.highlight.on_yank() end,
})
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
vim.keymap.set("n",         "<leader>o",        ":vsplit ") -- INFO: `o` for 'open'
vim.keymap.set("n",         "<leader>e",        ":echo ")
vim.keymap.set("n",         "<leader>mn",       ":Man ")

vim.keymap.set("n",         "<leader>cs",       function() vim.cmd("colorscheme slate") end)
-- lunaperche, slate, wildcharm, habamax
-- end --

-- block [terminal] --
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
-- end --
