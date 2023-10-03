local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " 

require("lazy").setup({ { import = "plugins" }, }, {
  install = {
    colorscheme = { "nightfly" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

require("core")

vim.cmd([[autocmd BufNewFile *.cpp 0r ~/kod/cp/cpp.template | $d]])
vim.cmd([[autocmd BufNewFile *.cc 0r ~/kod/cp/cc.template | $d]])
vim.cmd([[autocmd BufNewFile *.c 0r ~/kod/cp/c.template | $d]])