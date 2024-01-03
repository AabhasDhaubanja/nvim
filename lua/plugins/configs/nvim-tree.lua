require("nvim-tree").setup {}

vim.keymap.set('n', '<S-h>', vim.cmd.bp)
vim.keymap.set('n', '<S-l>', vim.cmd.bn)
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>close', vim.cmd.bd)
