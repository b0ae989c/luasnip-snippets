local snippets = {
	s(
		{ dscr = '', name = '\\( … \\)', trig = '$' },
		fmt([[\( {1} \)]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '( … )', trig = '()' },
		fmta([[{\left( <1> \right)}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '[ … ]', trig = '[]' },
		fmta([[{\left[ <1> \right]}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '\\langle … \\rangle', trig = '<>' },
		fmta([[{\left\langle <1> \right\rangle}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '\\{ … \\}', trig = '{}' },
		fmta([[{\left\{ <1> \right\}}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '| … |', trig = '||' },
		fmta([[{\left| <1> \right|}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = '\\| … \\|', trig = 'norm' },
		fmta([[{\left\| <1> \right\|}]], { i(1, '') })
	),
	s(
		{ dscr = '', name = 'fraction', trig = 'frac' },
		fmta([[{\frac{<1>}{<2>}}]], { i(1, ''), i(2, '') })
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.inline then
	return snippets, autosnippets
else
	return snippets, autosnippets
end
