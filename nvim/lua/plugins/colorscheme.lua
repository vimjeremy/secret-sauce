return {
  {
    'vague-theme/vague.nvim',
    priority = 1000,
    config = function() vim.cmd [[colorscheme vague]] end,
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {},
  },
}
