local snippets = {
	s(
		{ dscr = '', name = 'itemize', trig = 'list' },
		fmta(
			[[
			\begin{itemize}
				\item <1>
			\end{itemize}
			]],
			{ i(1, '') }
		)
	),
	s(
		{ dscr = '', name = 'item', trig = 'i' },
		fmta([[\item <1>]], { i(1, '') })
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.list then
	return snippets, autosnippets
else
	return {}, {}
end
