local snippets = {
  s(
    {
      trig = 'beg',
      name = '\\begin{} … \\end{}',
    },
    fmt(
      [[
  \begin{<1>}
    <2>
  \end{<1>}
  ]],
      {
        i(1, ''),
        i(2, ''),
      },
      {
        delimiters = '<>',
        repeat_duplicates = true,
      }
    )
  ),
}

local autosnippets = {}

return snippets, autosnippets
