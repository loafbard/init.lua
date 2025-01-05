return {
    "nvim-telescope/telescope.nvim",
    config = function()
        require("telescope").setup({
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
            },
            extensions = {
                media_files = {
                    -- filetypes whitelist
                    filetypes = { "o", "out", "dylib", "png", "jpeg", "pdf", "mp3", },
                    -- find command (defaults to `fd`)
                    bind_cmd = "rg" -- `ripgrep`
                }
            }
        })

        local built_in = require("telescope.builtin")

        vim.keymap.set("n",         "<leader>ff",       built_in.find_files, {})
        vim.keymap.set("n",         "<leader>fg",       built_in.live_grep, {})
        vim.keymap.set("n",         "<leader>gg",       built_in.git_files, {})
        vim.keymap.set("n",         "<leader>ps",       function() built_in.grep_string({ search = vim.fn.input("grep ") }) end)
        vim.keymap.set("n",         "<leader>fc",       function()
            built_in.find_files({ cwd = vim.fn.stdpath "config" })
        end)
    end,
}
