return {
    "ThePrimeagen/harpoon",
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        local mark = require("harpoon.mark")
        vim.keymap.set("n", "<leader>+", mark.add_file)
        vim.keymap.set("n", "<leader>-", mark.rm_file)

        local ui = require("harpoon.ui")
        vim.keymap.set("n", "<leader>;", ui.toggle_quick_menu)
        vim.keymap.set("n", "<leader>1", function () ui.nav_file(1) end)
        vim.keymap.set("n", "<leader>2", function () ui.nav_file(2) end)
        vim.keymap.set("n", "<leader>3", function () ui.nav_file(3) end)
        vim.keymap.set("n", "<leader>4", function () ui.nav_file(4) end)
        vim.keymap.set("n", "<leader>9", function () ui.nav_file(5) end)
        vim.keymap.set("n", "<leader>0", function () ui.nav_file(6) end)

        vim.keymap.set("n", "<leader>]", function () ui.nav_next() end)
        vim.keymap.set("n", "<leader>[", function () ui.nav_prev() end)
    end
}
