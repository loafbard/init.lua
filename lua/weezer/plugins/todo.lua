return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- opts = ,
    config = function()
        local tc = require("todo-comments")
        vim.keymap.set("n", "]t",           function() tc.jump_next() end);
        vim.keymap.set("n", "[t",           function() tc.jump_prev() end);
        vim.keymap.set("n", "<leader>ft",   function() vim.cmd("TodoTelescope") end)

        tc.setup({
            highlight = {
                multiline         = true, -- enable multine todo comments
                multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
                multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
                before            = "fg", -- "fg" or "bg" or empty
                keyword           = "fg", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
                after             = "fg", -- "fg" or "bg" or empty
                pattern           = [[.*\[(KEYWORDS)\]\s*]], -- pattern or table of patterns, used for highlighting (vim regex). custom pattern, added by kiri
                comments_only     = true, -- uses treesitter to match keywords in comments only
                max_line_len      = 400, -- ignore lines longer than this
                exclude           = {}, -- list of file types to exclude highlighting
            },
        })
    end,
}
-- [INFO] demo

-- [HACK]

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
