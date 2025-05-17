-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime"
})

-- vim.o.background = "light"
vim.cmd("colorscheme catppuccin-mocha")

-- init plugins config
require("config.nvim-tree")
require("config.lualine")
require("config.bufferline")
require("config.toggleterm")
require("config.lsp")

-- keymap
require("keymaps")
