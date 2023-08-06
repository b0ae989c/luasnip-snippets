local M = {}

function M.check_context(key_1, key_2, key_3)
	local location = vim.fn.searchpairpos(key_1, key_2, key_3, 'bnW', '', 0, 100)

	return (location[1] > 0) and (location[2] > 0)
end

function M.check_tex_environment(names)
	for _, name in ipairs(names) do
		local result = M.check_context(
			[[\\begin\s*{]] .. name .. [[\*\?}]],
			'',
			[[\\end\s*{]] .. name .. [[\*\?}]]
		)
		if result then return result end
	end
end

return M
