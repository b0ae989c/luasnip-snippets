local snippets = {
	s(
		{ dscr = '', name = 'NiceMatrix', trig = 'nmat' },
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
		{ dscr = '', name = 'bNiceMatrix', trig = 'bnmat' },
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
		{ dscr = '', name = 'pNiceMatrix', trig = 'pnmat' },
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
		{ dscr = '', name = 'vNiceMatrix', trig = 'vnmat' },
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
		{ dscr = '', name = 'BNiceMatrix', trig = 'Bnmat' },
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
		{ dscr = '', name = 'VNiceMatrix', trig = 'Vnmat' },
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
