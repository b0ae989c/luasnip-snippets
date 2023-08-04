local snippets = {
  s(
    {
      trig = 'use',
      name = 'usepackage',
    },
    fmta(
      [[
      \usepackage[<1>]{<2>}
      ]],
      {
        i(1, ''),
        i(2, ''),
      }
    )
  ),
  s(
    {
      trig = 'beg',
      name = 'begin … end',
    },
    fmta(
      [[
      \begin{<1>}
      	<2>
      \end{<1>}
      ]],
      {
        i(1, ''),
        i(2, ''),
      },
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
