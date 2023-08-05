local snippets = {
	s(
		{ dscr = '', name = 'equation', trig = 'eqn' },
		fmta(
			[[
			\begin{equation}
				<1>
			\end{equation}
			]],
			{ i(1, '') }
		)
	),
	s(
		{ dscr = '', name = 'subequations', trig = 'subeqn' },
		fmta(
			[[
			\begin{subequations}
				\begin{align}
					<1>
				\end{align}
			\end{subequations}
			]],
			{ i(1, '') }
		)
	),
	s(
		{ dscr = '', name = 'align', trig = 'ali' },
		fmta(
			[[
			\begin{aligned}
				<1>
			\end{aligned}
			]],
			{ i(1, '') }
		)
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.equation then
	return snippets, autosnippets
else
	return {}, {}
end
