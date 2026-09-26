local formatters = {
  lua = { 'stylua' },
}

return {
  'stevearc/conform.nvim',
	cmd = "Conform",
	event = "BufWritePre",
  opts = {
    formatters_by_ft = formatters,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}
