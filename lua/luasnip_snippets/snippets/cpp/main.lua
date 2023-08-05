local snippets = {
	s(
		{ dscr = '', name = 'main', trig = 'main' },
		fmta(
			[[
			int
			main(int, char**) {
				<1>
				return 0;
			}
			]],
			{ i(1, '') }
		)
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.cpp.main then
	return snippets, autosnippets
else
	return {}, {}
end
