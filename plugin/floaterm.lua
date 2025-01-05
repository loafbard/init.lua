local state = {
    buffer = -1,
    window = -1,
}

local function floaterm_open_window(options)
    options = options or {}

    local buffer = nil
    if vim.api.nvim_buf_is_valid(options.buffer) then
        buffer = options.buffer
    else
        buffer = vim.api.nvim_create_buf(false, true) -- scratch temporary buffer
    end

    local main_win_width = vim.o.columns;
    local main_win_height = vim.o.lines;

    local width = options.width or math.floor(main_win_width * 0.8);
    local height = options.height or math.floor(main_win_height * 0.8);

    local x = math.floor((main_win_width - width) / 2)
    local y = math.floor((main_win_height - height) / 2)

    local config = { -- TODO: no man for this, read the online docs I guess
        relative = "editor",
        width = width,
        height = height,
        col = x,
        row = y,
        -- style = "minimal", -- INFO: only one option, `relative` disables all nu and other editor related features
        border = "rounded",
    }

    local window = vim.api.nvim_open_win(buffer, true, config)

    return { buffer = buffer, window = window }
end

local floaterm_toggle = function()
    if not vim.api.nvim_win_is_valid(state.window) then
        state = floaterm_open_window({ buffer = state.buffer })
        if vim.bo[state.buffer].buftype ~= "terminal" then
            vim.cmd.term()
        end
    else
        vim.api.nvim_win_hide(state.window)
    end
end

vim.api.nvim_create_user_command("Floaterm", floaterm_toggle, {})
vim.keymap.set({ "n" }, "tt", floaterm_toggle)
