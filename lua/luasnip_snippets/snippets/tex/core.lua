local snippets = {
	s(
		{ trig = 'use', name = 'usepackage', dscr = '' },
		fmta([[\usepackage[<1>]{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'part', name = 'part', dscr = '' },
		fmta([[\part{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'chap', name = 'chapter', dscr = '' },
		fmta([[\chapter{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'sect', name = 'section', dscr = '' },
		fmta([[\section{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'subsect', name = 'subsection', dscr = '' },
		fmta([[\subsection{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'sub2sect', name = 'subsubsection', dscr = '' },
		fmta([[\subsubsection{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'para', name = 'paragraph', dscr = '' },
		fmta([[\paragraph{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'subpara', name = 'subparagraph', dscr = '' },
		fmta([[\subparagraph{<1>}\label{<2>}]], { i(1, ''), i(2, '') })
	),
	s(
		{ trig = 'beg', name = 'begin … end', dscr = '' },
		fmta(
			[[
			\begin{<1>}
				<2>
			\end{<1>}
			]],
			{ i(1, ''), i(2, '') },
			{ repeat_duplicates = true }
		)
	),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.core then
	return snippets, autosnippets
else
	return {}, {}
end
-- vi: set noexpandtab:
