return {
  'nvim-mini/mini.nvim',
  config = function()
    -- Oneliners
    require('mini.ai').setup {}
    require('mini.pairs').setup {}
    require('mini.surround').setup {}
    require('mini.move').setup {}
    require('mini.git').setup {}
    require('mini.starter').setup {}
    require('mini.notify').setup {}
    require('mini.icons').setup {}
    require('mini.extra').setup {}

    -- Mini pick
    require('mini.pick').setup {}
    vim.keymap.set('n', '<leader>ff', ':Pick files<CR>', { desc = '[MP] Pick files' })
    vim.keymap.set('n', '<leader>fe', ':Pick explorer<CR>', { desc = '[MP] Explore files' })
    vim.keymap.set('n', '<leader>fg', ':Pick grep_live<CR>', { desc = '[MP] Grep files' })
    vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>', { desc = '[MP] Pick buffers' })
    vim.keymap.set('n', '<leader>fh', ':Pick help<CR>', { desc = '[MP] Pick help tags' })
    vim.keymap.set('n', '<leader>fl', ':Pick diagnostic<CR>', { desc = '[MP] Pick diagnostics' })

    -- Mini clue
    local miniclue = require 'mini.clue'
    require('mini.clue').setup {
      triggers = {
        { mode = { 'n', 'x' }, keys = '<Leader>' },
        { mode = { 'n', 'x' }, keys = 'g' },
        { mode = { 'n', 'x' }, keys = '"' },
        { mode = { 'i', 'c' }, keys = '<C-r>' },
        { mode = 'n', keys = '<C-w>' },
        { mode = { 'n', 'x' }, keys = 'z' },
      },
      clues = {
        miniclue.gen_clues.g(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
      },
      window = { delay = 0 },
    }
  end,
}
