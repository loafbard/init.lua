return {
    --     {   "VonHeikemen/lsp-zero.nvim" , branch = "v4.x" },
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
                    "glslls",
                },
            }
        },
        { -- this one is for lua_ls to read vim api, yet to hit the docs
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                }
            },
        },
        -- { "hrsh7th/cmp-nvim-lsp", opt = {} },
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {}
        lspconfig.clangd.setup {}
        lspconfig.glslls.setup {}
    end
}
