local snippets = {
	s(
		{
			trig = 'fig',
			name = 'figure',
			dscr = '',
		},
		fmta(
			[[
			\begin{figure}[<1>]
				\centering
				\includegraphics[<2>]{<3>}
				\caption{<4>}
				\label{<5>}
			\end{figure}
			]],
			{ i(1, ''), i(2, ''), i(3, ''), i(4, ''), i(5, '') }
		)
	),
	s(
		{
			trig = 'subfig',
			name = 'subfigure',
			dscr = '',
		},
		fmta(
			[[
			\begin{subfigure}[b]{<1>\textwidth}
				\centering
				\includegraphics[width=\textwidth]{<2>}
				\caption{<3>}
				\label{<4>}
			\end{subfigure}
			\hfill
			]],
			{ i(1, ''), i(2, ''), i(3, ''), i(4, '') }
		)
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.figure then
	return snippets, autosnippets
else
	return {}, {}
end
-- vi: set noexpandtab:
