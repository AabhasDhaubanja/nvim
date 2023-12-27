print('hello from dhaube')
require('core.remaps')

vim.o.ignorecase = true
vim.o.smartcase = true

vim.diagnostic.config({ virtual_text = false })

vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
