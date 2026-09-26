return {
  {
    'ojroques/vim-oscyank',
    lazy = false,
    config = function()
      vim.keymap.set('n', 'Y', '<Plug>OSCYankOperator_')
      vim.keymap.set('v', 'Y', '<Plug>OSCYankVisual')
    end,
  },
}
