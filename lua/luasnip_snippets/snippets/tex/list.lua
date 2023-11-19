local util = require('luasnip_snippets.util')

local snippets = {
	s(
		{ trig = 'list', name = 'itemize', dscr = '' },
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
		{ trig = 'enum', name = 'enumerate', dscr = '' },
		fmta(
			[[
			\begin{enumerate}
				\item <1>
			\end{enumerate}
			]],
			{ i(1, '') }
		)
	),
	s(
	),
	s({
		trig = 'i',
		name = 'item',
		dscr = '',
		condition = function()
			return util.check_tex_environment({ 'itemize', 'enumerate' })
		end,
		show_condition = function()
			return util.check_tex_environment({ 'itemize', 'enumerate' })
		end,
	}, fmta([[\item <1>]], { i(1, '') })),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.list then
	return snippets, autosnippets
else
	return {}, {}
end
-- vi: set noexpandtab:
