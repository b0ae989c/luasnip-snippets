local M = {}

function M.load()
  local path_snippets =
    vim.api.nvim_get_runtime_file('lua/luasnip_snippets/snippets/', false)[1]

  require('luasnip.loaders.from_lua').load({
    paths = path_snippets,
  })
end

return M
