require("weezer.set")
require("weezer.keybind")

-- block [lazy nvim config and setup] --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.loop.fs_stat(lazypath)) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    print(string.format("installing lazy.nvim: %s", lazypath))
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = "weezer.plugins",
    change_detection = { notify = true },
})

vim.cmd("set list")
-- end --
