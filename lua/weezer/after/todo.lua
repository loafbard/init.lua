return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local tc = require("todo-comments")
        vim.keymap.set("n", "]t",           function() tc.jump_next() end);
        vim.keymap.set("n", "[t",           function() tc.jump_prev() end);
        vim.keymap.set("n", "<leader>ft",   function() vim.cmd("TodoTelescope") end)
    end,
}
-- INFO: demo

-- HACK:

-- FIX:
-- FIXME:
-- BUG:
-- FIXIT:
-- ISSUE:

-- TESTING:
-- FAILED:
-- PASSED:

-- OPTIM:
-- OPTIMIZE:
-- PERFORMANCE:

-- WARNING:
-- XXX:
