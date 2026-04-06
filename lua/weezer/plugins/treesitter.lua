return {
    "nvim-treesitter/nvim-treesitter",
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
    config = function()
        require("nvim-treesitter").setup({
            auto_install = true,
            ignore_install = {},
            modules = {},
            ensure_installed = {
                "c", "asm", "lua", "rust", "vimdoc", "ada", "markdown", "glsl", "html", "css", "bash", "fortran", "slang"
            },
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })

        vim.keymap.set("n", "<leader>ts", "<cmd>TSToggle highlight<CR>")
    end,
}
