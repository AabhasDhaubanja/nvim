vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>nn', vim.cmd.bn)
vim.keymap.set('n', '<leader>pp', vim.cmd.bp)
vim.keymap.set('n', '<leader>close', vim.cmd.bd)

vim.diagnostic.config({ virtual_text = false })

vim.keymap.set('n', '<leader>e', function() 
	vim.diagnostic.open_float()
end, {})
