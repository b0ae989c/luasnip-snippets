local snippets = {
	s(
		{
			trig = 'eqn',
			name = 'equation',
			dscr = '',
		},
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
		{
			trig = 'subeqn',
			name = 'subequations',
			dscr = '',
		},
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
		{
			trig = 'ali',
			name = 'align',
			dscr = '',
		},
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
-- vi: set noexpandtab:
