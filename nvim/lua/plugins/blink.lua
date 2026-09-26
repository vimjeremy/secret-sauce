return {
  'saghen/blink.cmp',
  dependencies = {
    'saghen/blink.lib',
    'rafamadriz/friendly-snippets',
  },
	event = { "InsertEnter", "CmdlineEnter" },
  build = function() require('blink.cmp').build():pwait() end,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'default', ['<Tab>'] = { 'select_and_accept', 'snippet_forward', 'fallback' }, ['<C-x>'] = { 'show', 'fallback' } },
    completion = { documentation = { auto_show = true }, trigger = { show_in_snippet = false } },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    fuzzy = { implementation = 'rust' },
  },
}
