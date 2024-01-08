local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', '<leader>hidden', api.tree.toggle_gitignore_filter)
end


require("nvim-tree").setup {
	on_attach = my_on_attach
}

vim.keymap.set('n', '<S-h>', vim.cmd.bp)
vim.keymap.set('n', '<S-l>', vim.cmd.bn)
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')

vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>')

vim.keymap.set('n', '<leader>x', vim.cmd.bd)
