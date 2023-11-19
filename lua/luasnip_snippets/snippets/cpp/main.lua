local snippets = {
	s(
		{ trig = 'main', name = 'main', dscr = '' },
		fmta(
			[[
			auto main(int, char**) -> int {
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
-- vi: set noexpandtab:
