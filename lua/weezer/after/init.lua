return {
    {   "nvim-lua/plenary.nvim", name = "plenary" },
    {   
        "eandrju/cellular-automaton.nvim",
        config = function()
            vim.keymap.set("n",         "<leader>mr",       "<cmd>CellularAutomaton make_it_rain<CR>")
        end,
    },
}
