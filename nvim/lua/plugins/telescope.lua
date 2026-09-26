return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-ui-select.nvim', lazy = false },
  },
  opts = { extensions = { ['ui-select'] = {} } },
  keys = {
    { '<leader>ff', ':Telescope find_files<CR>' },
    { '<leader>fg', ':Telescope live_grep<CR>' },
    { '<leader>fb', ':Telescope buffers<CR>' },
    { '<leader>fh', ':Telescope help_tags<CR>' },
    { '<leader>fl', ':Telescope diagnostics<CR>' },
    { '<C-x><C-f>', ':Telescope find_files<CR>' },
  },
  config = function() require('telescope').load_extension 'ui-select' end,
}
