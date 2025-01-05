return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opt = { }, -- TODO:
    config = {
        vim.keymap.set("n", "]t",           function() require("todo-comments").jump_next() end);
        vim.keymap.set("n", "[t",           function() require("todo-comments").jump_prev() end);
        vim.keymap.set("n", "<leader>ft",   function() vim.cmd("TodoTelescope") end)
    },
}
