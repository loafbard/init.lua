return {
--     {   "VonHeikemen/lsp-zero.nvim" , branch = "v4.x" },
--     {   "hrsh7th/cmp-nvim-lsp" },
--     {   "hrsh7th/nvim-cmp" },
    { -- this one is for lua_ls to read vim api, yet to hit the docs
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            }
        },
    },
    {
        "williamboman/mason.nvim", config = function() require("mason").setup() end
    },
    {
        "williamboman/mason-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {}
            lspconfig.clangd.setup {}
        end
    }
}
