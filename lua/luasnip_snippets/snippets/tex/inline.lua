local snippets = {
  s(
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
  ),
  s(
    {
      trig = '()',
      name = '( … )',
    },
    fmta(
      [[
      {\left( <1> \right)}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = '[]',
      name = '[ … ]',
    },
    fmta(
      [[
      {\left[ <1> \right]}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = '<>',
      name = '\\langle … \\rangle',
    },
    fmta(
      [[
      {\left\langle <1> \right\rangle}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = '{}',
      name = '\\{ … \\}',
    },
    fmta(
      [[
      {\left\{ <1> \right\}}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = '||',
      name = '| … |',
    },
    fmta(
      [[
      {\left| <1> \right|}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = 'norm',
      name = '\\| … \\|',
    },
    fmta(
      [[
      {\left\| <1> \right\|}
      ]],
      { i(1, '') }
    )
  ),
  s(
    {
      trig = 'frac',
      name = 'fraction',
    },
    fmta(
      [[
      {\frac{<1>}{<2>}}
      ]],
      {
        i(1, ''),
        i(2, ''),
      }
    )
  ),
}

local autosnippets = {}

if require('luasnip_snippets.config').option.tex.inline then
  return snippets, autosnippets
else
  return snippets, autosnippets
end
