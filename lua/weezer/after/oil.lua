return {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = {{ "echasnovski/mini.icons", opts = {} }},
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
        require("oil").setup({
            columns = {
                "icon",
                "permissions",
                "size",
                -- "mtime",
            },
            view_options = {
                show_hidden = true,
                is_hidden_file = function(name, bufnr)
                    return vim.startswith(name, '.')
                end,
                is_always_hidden = function(name, bufnr)
                    return vim.startswith(name, '..') -- dude find the function you need, what the fuck is this? [1734727030]
                end,
            },
            win_options = {
                wrap = false,
            }
        })

        vim.keymap.set("n",         "-",                "<cmd>Oil<CR>")
    end,
}
