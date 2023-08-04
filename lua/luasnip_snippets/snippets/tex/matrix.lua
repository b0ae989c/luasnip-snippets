local snippets = {
	s(
		{
			trig = 'nmat',
			name = 'NiceMatrix',
		},
		fmta(
			[[
			\begin{NiceMatrix}
				<1>
			\end{NiceMatrix}
			]],
			{ i(1, '') }
		)
	),
	s(
		{
			trig = 'bnmat',
			name = 'bNiceMatrix',
		},
		fmta(
			[[
			\begin{bNiceMatrix}
				<1>
			\end{bNiceMatrix}
			]],
			{ i(1, '') }
		)
	),
	s(
		{
			trig = 'pnmat',
			name = 'pNiceMatrix',
		},
		fmta(
			[[
			\begin{pNiceMatrix}
				<1>
			\end{pNiceMatrix}
			]],
			{ i(1, '') }
		)
	),
	s(
		{
			trig = 'vnmat',
			name = 'vNiceMatrix',
		},
		fmta(
			[[
			\begin{vNiceMatrix}
				<1>
			\end{vNiceMatrix}
			]],
			{ i(1, '') }
		)
	),
	s(
		{
			trig = 'Bnmat',
			name = 'BNiceMatrix',
		},
		fmta(
			[[
			\begin{BNiceMatrix}
				<1>
			\end{BNiceMatrix}
			]],
			{ i(1, '') }
		)
	),
	s(
		{
			trig = 'Vnmat',
			name = 'VNiceMatrix',
		},
		fmta(
			[[
			\begin{VNiceMatrix}
				<1>
			\end{VNiceMatrix}
			]],
			{ i(1, '') }
		)
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.matrix then
	return snippets, autosnippets
else
	return {}, {}
end
