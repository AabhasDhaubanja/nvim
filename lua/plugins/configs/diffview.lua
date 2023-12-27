-- Lua
local actions = require("diffview.actions")

require("diffview").setup({})

vim.keymap.set('n', '<leader>dvo', ':DiffviewOpen<cr>')
vim.keymap.set('n', '<leader>dvc', ':DiffviewClose<cr>')
