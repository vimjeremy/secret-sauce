return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  lazy = false,
  keys = {
    { '<leader>o', ':Oil<CR>', desc = '[Oil] Explore files' },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
}
