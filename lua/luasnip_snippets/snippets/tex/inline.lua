local snippets = {
	s({
		trig = '$',
		name = '\\( … \\)',
		dscr = '',
	}, fmt([[\( {1} \)]], { i(1, '') })),
	s({
		trig = '()',
		name = '( … )',
		dscr = '',
	}, fmta([[{\left( <1> \right)}]], { i(1, '') })),
	s({
		trig = '[]',
		name = '[ … ]',
		dscr = '',
	}, fmta([[{\left[ <1> \right]}]], { i(1, '') })),
	s({
		trig = '<>',
		name = '\\langle … \\rangle',
		dscr = '',
	}, fmta([[{\left\langle <1> \right\rangle}]], { i(1, '') })),
	s({
		trig = '{}',
		name = '\\{ … \\}',
		dscr = '',
	}, fmta([[{\left\{ <1> \right\}}]], { i(1, '') })),
	s({
		trig = '||',
		name = '| … |',
		dscr = '',
	}, fmta([[{\left| <1> \right|}]], { i(1, '') })),
	s({
		trig = 'norm',
		name = '\\| … \\|',
		dscr = '',
	}, fmta([[{\left\| <1> \right\|}]], { i(1, '') })),
	s({
		trig = 'frac',
		name = 'fraction',
		dscr = '',
	}, fmta([[{\frac{<1>}{<2>}}]], { i(1, ''), i(2, '') })),
	s({
		trig = 'pd',
		name = 'partial derivative',
		dscr = '',
	}, fmta([[{\frac{\partial}{\partial <1>}}]], { i(1, '') })),
	s({
		trig = 'lim',
		name = 'limit',
		dscr = '',
	}, fmta([[\lim_{<1>}]], { i(1, '') })),
	s({
		trig = 'sum',
		name = 'summation',
		dscr = '',
	}, fmta([[\sum_{<1>}^{<2>}]], { i(1, ''), i(2, '') })),
	s({
		trig = 'prod',
		name = 'product',
		dscr = '',
	}, fmta([[\prod_{<1>}^{<2>}]], { i(1, ''), i(2, '') })),
	s({
		trig = 'int',
		name = 'integral',
		dscr = '',
	}, fmta([[\int_{<1>}^{<2>}]], { i(1, ''), i(2, '') })),
	s({
		trig = 'iint',
		name = 'double integral',
		dscr = '',
	}, fmta([[\iint_{<1>}^{<2>}]], { i(1, ''), i(2, '') })),
	s({
		trig = 'oint',
		name = 'line integral',
		dscr = '',
	}, fmta([[\oint_{<1>}^{<2>}]], { i(1, ''), i(2, '') })),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.inline then
	return snippets, autosnippets
else
	return snippets, autosnippets
end
-- vi: set noexpandtab:
