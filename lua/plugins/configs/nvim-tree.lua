require("nvim-tree").setup {}

vim.keymap.set('n', '<S-h>', vim.cmd.bp)
vim.keymap.set('n', '<S-l>', vim.cmd.bn)
vim.keymap.set('n', '<leader>close', vim.cmd.bd)
