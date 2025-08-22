-- block [highlight search] --
vim.keymap.set("n",         "<Esc>",            "<cmd>nohlsearch<CR>") -- this guy removes the highlights from search
-- end --

-- block [set list] --
vim.keymap.set("n",         "<leader>l",        "<cmd>set list<CR>")
vim.keymap.set("n",         "<leader>nl",       "<cmd>set nolist<CR>")
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

-- block [retain position after pasting] --
-- vim.keymap.set("n",         "p", function ()
--     local row, col = unpack(vim.api.nvim_win_get_cursor(0))
--     vim.cmd("put")
--     vim.api.nvim_win_set_cursor(0, { row, col })
-- end)
-- end --

-- block [alt insert] --
-- vim.keymap.set("i", "<C-j>", function()
--     local win = vim.api.nvim_get_current_win()
--     local row, col = unpack(vim.api.nvim_win_get_cursor(win))
--     vim.api.nvim_win_set_cursor(win, { row + 1, col })
-- end)
-- vim.keymap.set("i", "<C-k>", function()
--     local win = vim.api.nvim_get_current_win()
--     local row, col = unpack(vim.api.nvim_win_get_cursor(win))
--     vim.api.nvim_win_set_cursor(win, { row - 1, col })
-- end)
-- vim.keymap.set("i", "<C-h>", function()
--     local win = vim.api.nvim_get_current_win()
--     local row, col = unpack(vim.api.nvim_win_get_cursor(win))
--     vim.api.nvim_win_set_cursor(win, { row, col - 1 })
-- end)
-- vim.keymap.set("i", "<C-l>", function()
--     local win = vim.api.nvim_get_current_win()
--     local row, col = unpack(vim.api.nvim_win_get_cursor(win))
--     vim.api.nvim_win_set_cursor(win, { row, col + 1 })
-- end)
-- end --

-- block [control j, k] --
-- vim.keymap.set({"n", "v"}, "<C-j>", "<C-d>")
-- vim.keymap.set({"n", "v"}, "<C-k>", "<C-u>")
-- end --

-- block [camel to pascal] --
vim.keymap.set("n", "<C-c>", "f_lvUhx")
-- end --

-- block [pascal to camel] --
vim.keymap.set("n",         "<leader>ts",       [[:%s/[a-z]\@<=[A-Z]/_\l\0/]])
vim.keymap.set("v",         "<leader>ts",       [[:s/[a-z]\@<=[A-Z]/_\l\0/]])
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
vim.keymap.set("n",         "<leader>e",        ":e ")
vim.keymap.set("n",         "<leader>mn",       ":Man 2 ")

-- block [keybind for certain files] --
vim.keymap.set("n", "<leader>fh", ":e ~/.zsh_history<CR>");
-- end --

-- block [colorscheme shifter] --
local switched = false
local shift_colorscheme = function()
    if switched then
        vim.cmd("colorscheme kanagawa")
        switched = false
    else
        vim.cmd("colorscheme slate")
        switched = true
    end
end
vim.keymap.set("n",         "<leader>cs",       shift_colorscheme)

-- lunaperche, slate, wildcharm, habamax
-- end --

-- block [shortcut keybinds] --
vim.keymap.set("n", "<leader>rdoc", "<cmd>!rustup doc --path | pbcopy<cr>")
-- end --
