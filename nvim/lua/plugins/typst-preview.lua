return {
  'chomosuke/typst-preview.nvim',
  ft = 'typst',
  version = '1.*',
  config = function()
    require('typst-preview').setup {
      invert_colors = 'auto',
    }
    vim.lsp.config['tinymist'] = {
      cmd = { 'tinymist' },
      filetypes = { 'typst' },
      settings = {},
    }

    vim.lsp.enable 'tinymist'
  end,
}
