return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "williamboman/mason.nvim", config = function() require("mason").setup() end
        },
        {
            "williamboman/mason-lspconfig",
            opt = {
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "glsl_analyzer",
                    "typescript-language-server",
                    "pyright",
                    "rust-analyzer",
                },
            }
        },
        { -- INFO: lsp_ls config, lazily
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                }
            },
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {}
        lspconfig.clangd.setup {}
        lspconfig.glsl_analyzer.setup {}
        lspconfig.pyright.setup {}

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("weezer-lsp-attach", { clear = true }),
            callback = function()
                local telescope_builtin = require("telescope.builtin") -- INFO: extending telescope's lsp functionalities

                vim.keymap.set("n", "gd",           telescope_builtin.lsp_definitions,      { desc = "[G]oto [D]efinition" })
                vim.keymap.set("n", "gr",           telescope_builtin.lsp_references,       { desc = "[G]oto [R]eferences" })
                vim.keymap.set("n", "gI",           telescope_builtin.lsp_implementations,  { desc = "[G]oto [I]mplementation" })
                vim.keymap.set("n", "<leader>D",    telescope_builtin.lsp_type_definitions, { desc = "Type [D]efinition" })
            end
        })
    end
}
