local s_begin = s(
  {
    trig = 'beg',
    name = 'begin … end',
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
)

local s_ali = s(
  {
    trig = 'ali',
    name = 'align',
  },
  fmt(
    [[
    \begin{aligned}
    	<1>
    \end{aligned}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_eqn = s(
  {
    trig = 'eqn',
    name = 'equation',
  },
  fmt(
    [[
    \begin{equation}
    	<1>
    \end{equation}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local snippets = {
  s_begin,
  s_ali,
  s_eqn,
}

local autosnippets = {}

return snippets, autosnippets