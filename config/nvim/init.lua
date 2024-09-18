require("config.lazy")

vim.cmd("colorscheme kanagawa-paper")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

local builtin = require("telescope.builtin")
local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = {"lua", "javascript", "python"}
})

vim.keymap.set('n', '<leader> ', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>f', ':bn<CR>')
vim.keymap.set('n', '<leader>b', ':bp<CR>')

