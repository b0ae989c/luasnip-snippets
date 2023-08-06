local M = {}

M.default = {
	cpp = {
		main = true,
	},
	tex = {
		core = true,
		equation = true,
		inline = true,
		list = true,
		matrix = true,
	},
}

M.option = {}

function M.setup(option)
	for ft, collection in pairs(option) do
		if collection == true then option[ft] = M.default[ft] end
	end

	M.option = vim.tbl_deep_extend('force', M.default, option or {})
end

return M
