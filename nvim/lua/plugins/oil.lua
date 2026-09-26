return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>e', '<cmd>Oil<cr>', desc = 'Oil file browser.' },
    { '<C-x><C-d>', '<cmd>Oil<cr>' },
  },
  opts = {
    default_file_explorer = true,
    view_options = { show_hidden = true },
  },
}
