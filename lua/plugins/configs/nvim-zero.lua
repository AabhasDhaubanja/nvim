local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'html', 'cssls'},
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.diagnostic.config({ virtual_text = false })

vim.keymap.set('n', '<leader>e', function() 
	vim.diagnostic.open_float()
end, {})
