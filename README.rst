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
       require('luasnip_snippets').load()
     end,
   }
