vim.lsp.enable 'tinymist'

return {
  'mason-org/mason-lspconfig.nvim',
	event = 'VeryLazy',
  opts = { automatic_enable = true, ensure_installed = { 'lua_ls', 'stylua', 'tinymist' } },
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'neovim/nvim-lspconfig',
  },
}
