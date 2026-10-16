return {
  {
    'folke/snacks.nvim',
    lazy = false,
    opts = {
      terminal = {},
      indent = {},
      image = {},
      explorer = {},
    },
    keys = {
      { '<leader>e', function() Snacks.explorer() end },
    },
  },
}
