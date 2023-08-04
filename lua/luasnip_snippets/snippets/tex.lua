local s_dollar = s(
  {
    trig = '$',
    name = '\\( … \\)',
  },
  fmt(
    [[
    \( {1} \)
    ]],
    { i(1, '') }
  )
)

local s_paren = s(
  {
    trig = '()',
    name = '( … )',
  },
  fmt(
    [[
    {\left( <1> \right)}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_bracket = s(
  {
    trig = '[]',
    name = '[ … ]',
  },
  fmt(
    [[
    {\left[ <1> \right]}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_angle_bracket = s(
  {
    trig = '<>',
    name = '\\langle … \\rangle',
  },
  fmt(
    [[
    {\left\langle <1> \right\rangle}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_curly_bracket = s(
  {
    trig = '{}',
    name = '\\{ … \\}',
  },
  fmt(
    [[
    {\left\{ <1> \right\}}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_bar = s(
  {
    trig = '||',
    name = '| … |',
  },
  fmt(
    [[
    {\left| <1> \right|}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_norm = s(
  {
    trig = 'norm',
    name = '\\| … \\|',
  },
  fmt(
    [[
    {\left\| <1> \right\|}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_frac = s(
  {
    trig = 'frac',
    name = 'fraction',
  },
  fmt(
    [[
    \frac{<1>}{<2>}
    ]],
    {
      i(1, ''),
      i(2, ''),
    },
    { delimiters = '<>' }
  )
)

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

local s_subeqn = s(
  {
    trig = 'subeqn',
    name = 'subequations',
  },
  fmt(
    [[
    \begin{subequations}
    	\begin{align}
    		<1>
    	\end{align}
    \end{subequations}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local s_bmat = s(
  {
    trig = 'bmat',
    name = 'bNiceMatrix',
  },
  fmt(
    [[
    \begin{bNiceMatrix}
    	<1>
    \end{bNiceMatrix}
    ]],
    { i(1, '') },
    { delimiters = '<>' }
  )
)

local snippets = {
  s_dollar,
  s_paren,
  s_bracket,
  s_angle_bracket,
  s_curly_bracket,
  s_bar,
  s_norm,
  s_frac,
  s_begin,
  s_ali,
  s_eqn,
  s_subeqn,
  s_bmat,
}

local autosnippets = {}

return snippets, autosnippets
