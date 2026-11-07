return {
  'neovim/nvim-lspconfig',
  config = function()
    -- Load all lsp server configurations
    local lsp_paths = vim.api.nvim_get_runtime_file("lsp/*.lua", true)
    for _, path in ipairs(lsp_paths) do
      local server_name = vim.fs.basename(path):gsub("%.lua$", "")
      vim.lsp.enable(server_name)
    end
  end,
}
