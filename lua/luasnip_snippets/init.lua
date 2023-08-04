local M = {}

function M.load()
  require('luasnip.loaders.from_lua').lazy_load({
    paths = vim.api.nvim_get_runtime_file(
      'lua/luasnip_snippets/snippets/',
      false
    )[1],
  })
end

return M
