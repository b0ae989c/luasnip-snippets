local snippets = {
	s(
		{
			trig = 'list',
			name = 'itemize',
			dscr = '',
		},
		fmta(
			[[
			\begin{itemize}
				\item <1>
			\end{itemize}
			]],
			{ i(1, '') }
		)
	),
	s({
		trig = 'i',
		name = 'item',
		dscr = '',
	}, fmta([[\item <1>]], { i(1, '') })),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.list then
	return snippets, autosnippets
else
	return {}, {}
end
