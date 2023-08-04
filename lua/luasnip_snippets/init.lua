local config = require('luasnip_snippets.config')

local M = {}

function M.load(option)
  config.setup(option or {})

  require('luasnip.loaders.from_lua').load({
    paths = vim.api.nvim_get_runtime_file(
      'lua/luasnip_snippets/snippets/',
      false
    )[1],
  })
end

return M
