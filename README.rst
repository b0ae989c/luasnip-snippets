luasnip-snippets
================

Configuration
-------------

.. code-block:: lua

   -- with lazy.nvim
   {
     'L3MON4D3/LuaSnip',
     event = 'BufReadPre',
     dependencies = {
       'https://gitlab.com/b0ae989c/luasnip-snippets.git',
     },
     config = function()
       -- all collections are loaded by default
       require('luasnip_snippets').load()
     end,
   }

Remove some collections of snippets:

.. code-block:: lua

   require('luasnip_snippets').load({
     cpp = {
       -- remove snippets in `cpp/main.lua`
       main = false,
     },
     tex = {
       -- remove snippets in `tex/list.lua`
       list = false,
     },
   })
