local s_main = s(
  {
    trig = 'main',
    name = 'int main()',
  },
  fmta(
    [[
    int
    main(int, char**) {
    	<1>
    	return 0;
    }
    ]],
    { i(1, '') }
  )
)

local snippets = {
  s_main,
}

local autosnippets = {}

return snippets, autosnippets
