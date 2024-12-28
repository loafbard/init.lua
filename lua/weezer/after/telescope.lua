return {
    "nvim-telescope/telescope.nvim",
    config = function()
        require("telescope").setup({
            extensions = {
                media_files = {
                    -- filetypes whitelist
                    filetypes = { "o", "out", "dylib", "png", "jpeg", "pdf", "mp3", },
                    -- find command (defaults to `fd`)
                    find_cmd = "rg" -- `ripgrep`
                }
            }
        })

        local telescopebuiltin = require("telescope.builtin")

        vim.keymap.set("n",         "<leader>ff",       telescopebuiltin.find_files, {})
        vim.keymap.set("n",         "<leader>fg",       telescopebuiltin.live_grep, {})
        vim.keymap.set("n",         "<leader>gg",       telescopebuiltin.git_files, {})
        vim.keymap.set("n",         "<leader>ps",       function() telescopebuiltin.grep_string({ search = vim.fn.input("grep ") }) end)
    end,
}
