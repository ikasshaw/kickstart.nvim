Vim�UnDo� �����ǻ }�9��OT8�����6P�#��7Y�   o     },   o         ?       ?   ?   ?    f��6   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             f���     �      !   \    5��                          W                     �                          W                     5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             f��"    �   -   /   ]       5��    -                   
   �              
       �    -   
                 �                     �    .                     �                    �    .                     �                     �    .                      �                     �    -   
                  �                     �    -   
                 �                     �    .                     �                    �    .                     �                     �    .                      �                     �    -   
                  �                     �    -   
                 �                     �    .                     �                    �    .                     �                     �    .                      �                     �    -   
                  �                     5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            !           ]           V        f��y     �      ]       =     config = function()       -- See `:help cmp`       local cmp = require 'cmp'   %    local luasnip = require 'luasnip'       luasnip.config.setup {}           cmp.setup {         snippet = {           expand = function(args)   '          luasnip.lsp_expand(args.body)           end,         },   =      completion = { completeopt = 'menu,menuone,noinsert' },   
      comp   8      -- For an understanding of why these mappings were   =      -- chosen, you will need to read `:help ins-completion`         --   R      -- No, but seriously. Please read `:help ins-completion`, it is really good!   +      mapping = cmp.mapping.preset.insert {   !        -- Select the [n]ext item   3        ['<C-n>'] = cmp.mapping.select_next_item(),   %        -- Select the [p]revious item   3        ['<C-p>'] = cmp.mapping.select_prev_item(),       )        -- Accept ([y]es) the completion.   :        --  This will auto-import if your LSP supports it.   @        --  This will expand snippets if the LSP sent a snippet.   :        ['<C-y>'] = cmp.mapping.confirm { select = true },       7        -- Manually trigger a completion from nvim-cmp.   H        --  Generally you don't need this, because nvim-cmp will display   E        --  completions whenever it has completion options available.   0        ['<C-Space>'] = cmp.mapping.complete {},       K        -- Think of <c-l> as moving to the right of your snippet expansion.   1        --  So if you have a snippet that's like:   !        --  function $name($args)           --    $body           --  end   
        --   O        -- <c-l> will move you to the right of each of the expansion locations.   9        -- <c-h> is similar, except moving you backwards.   *        ['<C-l>'] = cmp.mapping(function()   6          if luasnip.expand_or_locally_jumpable() then   $            luasnip.expand_or_jump()             end           end, { 'i', 's' }),   *        ['<C-h>'] = cmp.mapping(function()   .          if luasnip.locally_jumpable(-1) then               luasnip.jump(-1)             end           end, { 'i', 's' }),         },         sources = {           { name = 'nvim_lsp' },           { name = 'luasnip' },           { name = 'path' },         },       }     end,   }�   ]           =     config = function()       -- See `:help cmp`       local cmp = require 'cmp'   %    local luasnip = require 'luasnip'       luasnip.config.setup {}           cmp.setup {         snippet = {           expand = function(args)   '          luasnip.lsp_expand(args.body)           end,         },   =      completion = { completeopt = 'menu,menuone,noinsert' },   
      comp   8      -- For an understanding of why these mappings were   =      -- chosen, you will need to read `:help ins-completion`         --   R      -- No, but seriously. Please read `:help ins-completion`, it is really good!   +      mapping = cmp.mapping.preset.insert {   !        -- Select the [n]ext item   3        ['<C-n>'] = cmp.mapping.select_next_item(),   %        -- Select the [p]revious item   3        ['<C-p>'] = cmp.mapping.select_prev_item(),       )        -- Accept ([y]es) the completion.   :        --  This will auto-import if your LSP supports it.   @        --  This will expand snippets if the LSP sent a snippet.   :        ['<C-y>'] = cmp.mapping.confirm { select = true },       7        -- Manually trigger a completion from nvim-cmp.   H        --  Generally you don't need this, because nvim-cmp will display   E        --  completions whenever it has completion options available.   0        ['<C-Space>'] = cmp.mapping.complete {},       K        -- Think of <c-l> as moving to the right of your snippet expansion.   1        --  So if you have a snippet that's like:   !        --  function $name($args)           --    $body           --  end   
        --   O        -- <c-l> will move you to the right of each of the expansion locations.   9        -- <c-h> is similar, except moving you backwards.   *        ['<C-l>'] = cmp.mapping(function()   6          if luasnip.expand_or_locally_jumpable() then   $            luasnip.expand_or_jump()             end           end, { 'i', 's' }),   *        ['<C-h>'] = cmp.mapping(function()   .          if luasnip.locally_jumpable(-1) then               luasnip.jump(-1)             end           end, { 'i', 's' }),         },         sources = {           { name = 'nvim_lsp' },           { name = 'luasnip' },           { name = 'path' },         },       }     end,   }�      ]   ]    5��           =              X            W      5�_�                             ����                                                                                                                                                                                                                                                                                                                                        \           V        f��z     �      \       =     config = function()       -- See `:help cmp`       local cmp = require 'cmp'   %    local luasnip = require 'luasnip'       luasnip.config.setup {}           cmp.setup {         snippet = {           expand = function(args)   '          luasnip.lsp_expand(args.body)           end,         },   =      completion = { completeopt = 'menu,menuone,noinsert' },   
      comp   8      -- For an understanding of why these mappings were   =      -- chosen, you will need to read `:help ins-completion`         --   R      -- No, but seriously. Please read `:help ins-completion`, it is really good!   +      mapping = cmp.mapping.preset.insert {   !        -- Select the [n]ext item   3        ['<C-n>'] = cmp.mapping.select_next_item(),   %        -- Select the [p]revious item   3        ['<C-p>'] = cmp.mapping.select_prev_item(),       )        -- Accept ([y]es) the completion.   :        --  This will auto-import if your LSP supports it.   @        --  This will expand snippets if the LSP sent a snippet.   :        ['<C-y>'] = cmp.mapping.confirm { select = true },       7        -- Manually trigger a completion from nvim-cmp.   H        --  Generally you don't need this, because nvim-cmp will display   E        --  completions whenever it has completion options available.   0        ['<C-Space>'] = cmp.mapping.complete {},       K        -- Think of <c-l> as moving to the right of your snippet expansion.   1        --  So if you have a snippet that's like:   !        --  function $name($args)           --    $body           --  end   
        --   O        -- <c-l> will move you to the right of each of the expansion locations.   9        -- <c-h> is similar, except moving you backwards.   *        ['<C-l>'] = cmp.mapping(function()   6          if luasnip.expand_or_locally_jumpable() then   $            luasnip.expand_or_jump()             end           end, { 'i', 's' }),   *        ['<C-h>'] = cmp.mapping(function()   .          if luasnip.locally_jumpable(-1) then               luasnip.jump(-1)             end           end, { 'i', 's' }),         },         sources = {           { name = 'nvim_lsp' },           { name = 'luasnip' },           { name = 'path' },         },       }     end,   }�   \   ]   �   =     config = function()       -- See `:help cmp`       local cmp = require 'cmp'   %    local luasnip = require 'luasnip'       luasnip.config.setup {}           cmp.setup {         snippet = {           expand = function(args)   '          luasnip.lsp_expand(args.body)           end,         },   =      completion = { completeopt = 'menu,menuone,noinsert' },   
      comp   8      -- For an understanding of why these mappings were   =      -- chosen, you will need to read `:help ins-completion`         --   R      -- No, but seriously. Please read `:help ins-completion`, it is really good!   +      mapping = cmp.mapping.preset.insert {   !        -- Select the [n]ext item   3        ['<C-n>'] = cmp.mapping.select_next_item(),   %        -- Select the [p]revious item   3        ['<C-p>'] = cmp.mapping.select_prev_item(),       )        -- Accept ([y]es) the completion.   :        --  This will auto-import if your LSP supports it.   @        --  This will expand snippets if the LSP sent a snippet.   :        ['<C-y>'] = cmp.mapping.confirm { select = true },       7        -- Manually trigger a completion from nvim-cmp.   H        --  Generally you don't need this, because nvim-cmp will display   E        --  completions whenever it has completion options available.   0        ['<C-Space>'] = cmp.mapping.complete {},       K        -- Think of <c-l> as moving to the right of your snippet expansion.   1        --  So if you have a snippet that's like:   !        --  function $name($args)           --    $body           --  end   
        --   O        -- <c-l> will move you to the right of each of the expansion locations.   9        -- <c-h> is similar, except moving you backwards.   *        ['<C-l>'] = cmp.mapping(function()   6          if luasnip.expand_or_locally_jumpable() then   $            luasnip.expand_or_jump()             end           end, { 'i', 's' }),   *        ['<C-h>'] = cmp.mapping(function()   .          if luasnip.locally_jumpable(-1) then               luasnip.jump(-1)             end           end, { 'i', 's' }),         },         sources = {           { name = 'nvim_lsp' },           { name = 'luasnip' },           { name = 'path' },         },       }     end,   }�      \   ]    5��          =              W            R      �                         R                    �                         j                    �                          �                    �    !                     �                    �    "                     �                    �    $                     �                    �    %                     �                    �    &                  
                
       �    '           
          2      
              �    (                  
   \             
       �    )                     k                    �    *                     v                    �    +                     �                    �    ,                     �                    �    -                     �                    �    .                     >                    �    /                     I                    �    0                     �                    �    1                  
   �             
       �    2                  
   �             
       �    3                  
   &             
       �    4                  
   N             
       �    6                  
   �             
       �    7                  
   �             
       �    8                  
   �             
       �    9                  
   1             
       �    ;                  
   o             
       �    <                  
   �             
       �    =                  
   �             
       �    >                  
   <	             
       �    @                  
   p	             
       �    A                  
   �	             
       �    B                  
   �	             
       �    C                  
   
             
       �    D                  
   ,
             
       �    E                  
   >
             
       �    F                  
   K
             
       �    G                  
   �
             
       �    H                  
   �
             
       �    I           
                
              �    J                     ?                    �    K           
          f      
              �    L                  
   v             
       �    M                  
   �             
       �    N           
          �      
              �    O                     �                    �    P           
                
              �    Q                  
   !             
       �    R                     ?                    �    S                     J                    �    T                  
   ^             
       �    U                  
                
       �    V                  
   �             
       �    W                     �                    �    X                     �                    �    Y                     �                    �    Z                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                       [           V        f��z     �      [       =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�   [   \   �   =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�      [   ]    5��          =              R      �      +      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       Z           V        f��z     �      Z       =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�   Z   [   �   =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�      Z   ]    5��          =              +      �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       Y           V        f��{     �      [       =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�         �   =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�   Z   �   ]    5��          =              �      �      +      5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                       Z           V        f��{     �      \       =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�         �   =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }�   [   �   ]    5��          =              +      �      R      5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                       [           V        f��{    �      \   ]   =       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }5��                         R                    �                         l                    �                          �                    �    !                     �                    �    "                     �                    �    $                     �                    �    %                  
                
       �    &           
                
              �    '                     B                    �    (           
          n      
              �    )                  
                
       �    *                  
   �             
       �    +                  
   �             
       �    ,                  
   �             
       �    -                  
                
       �    .                  
   \             
       �    /                  
   i             
       �    0                  
   �             
       �    1           
          �      
              �    2           
                
              �    3           
          N      
              �    4           
          x      
              �    6           
          �      
              �    7           
          �      
              �    8           
                
              �    9           
          c      
              �    ;           
          �      
              �    <           
          �      
              �    =           
          ,	      
              �    >           
          v	      
              �    @           
          �	      
              �    A           
          �	      
              �    B           
          2
      
              �    C           
          X
      
              �    D           
          p
      
              �    E           
          �
      
              �    F           
          �
      
              �    G           
          �
      
              �    H           
          %      
              �    I                     T                    �    J                     �                    �    K                     �                    �    L           
          �      
              �    M           
          �      
              �    N                                         �    O                     L                    �    P                     m                    �    Q           
                
              �    R                  
   �             
       �    S                  
   �             
       �    T           
          �      
              �    U           
          �      
              �    V           
                
              �    W                  
   &             
       �    X                     3                    �    Y                     =                    �    Z                     H                    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                V   0    f��W     �                    'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         _          'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        �      4       �      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                V   0    f��X     �                    'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         _          'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        �      4       {      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V   0    f��X     �                    'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         _          'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        {      4       P      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V   0    f��X     �                    'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         _          'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        P      4       O      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��Z     �                    'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         `          'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        /      T       (      �                         (                    �                         J                    �                         h                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��Z     �                !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�         `      !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�         ]    5��                        (      Z             �                      
                
       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��Z     �                %          'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�         `      %          'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�         ]    5��                              ^       �      �               
          �      
              �                                             �                         7                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��[     �                #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         `      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         ]    5��                        �      `       �      �                         �                    �                                             �                         3                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��[     �                '            'saadparwaiz1/cmp_luasnip',   #            'hrsh7th/cmp-nvim-lsp',               'hrsh7th/cmp-path',�         `      '            'saadparwaiz1/cmp_luasnip',   #            'hrsh7th/cmp-nvim-lsp',               'hrsh7th/cmp-path',�         ]    5��                        �      l       �      �                      
   �             
       �                      
   �             
       �                      
                
       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��[     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         `      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         ]    5��                        �      f       �      �               
          �      
              �               
          �      
              �               
          �      
              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��[     �   
             #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         `      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�   
      ]    5��                 
       �      `       O      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��[     �   	             #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         `      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�   	      ]    5��   
              	       O      `             �    	                                         �    
                     *                    �                         D                    5�_�                    
        ����                                                                                                                                                                                                                                                                                                                            
                    V       f��[     �                  'saadparwaiz1/cmp_luasnip',     'hrsh7th/cmp-nvim-lsp',     'hrsh7th/cmp-path',�         `        'saadparwaiz1/cmp_luasnip',     'hrsh7th/cmp-nvim-lsp',     'hrsh7th/cmp-path',�         ]    5��   	                           N       �       5�_�                    	        ����                                                                                                                                                                                                                                                                                                                            	                    V       f��[     �                  'saadparwaiz1/cmp_luasnip',     'hrsh7th/cmp-nvim-lsp',     'hrsh7th/cmp-path',�         `        'saadparwaiz1/cmp_luasnip',     'hrsh7th/cmp-nvim-lsp',     'hrsh7th/cmp-path',�         ]    5��                        �       N       �       �                         �                     �                         �                     �    	                     �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                      
          V       f��[     �      
          !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�   
      `      !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�      
   ]    5��                        �       Z       �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                      	          V       f��[     �      	          !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�   	   
   `      !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�      	   ]    5��                        �       Z       �       �                         �                     �                         �                     �                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��\     �                    'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�      	   `          'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         ]    5��                        �       T       ]       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       f��f     �                *    -- Adds other completion capabilities.   J    --  nvim-cmp does not ship with all sources by default. They are split   5    --  into multiple repos for maintenance purposes.5��                          �      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                       W           V        f��o    �      X   Z   <         config = function()           -- See `:help cmp`   !        local cmp = require 'cmp'   )        local luasnip = require 'luasnip'           luasnip.config.setup {}               cmp.setup {             snippet = {   #            expand = function(args)   +              luasnip.lsp_expand(args.body)               end,             },   A          completion = { completeopt = 'menu,menuone,noinsert' },             comp   <          -- For an understanding of why these mappings were   A          -- chosen, you will need to read `:help ins-completion`             --   V          -- No, but seriously. Please read `:help ins-completion`, it is really good!   /          mapping = cmp.mapping.preset.insert {   %            -- Select the [n]ext item   7            ['<C-n>'] = cmp.mapping.select_next_item(),   )            -- Select the [p]revious item   7            ['<C-p>'] = cmp.mapping.select_prev_item(),       -            -- Accept ([y]es) the completion.   >            --  This will auto-import if your LSP supports it.   D            --  This will expand snippets if the LSP sent a snippet.   >            ['<C-y>'] = cmp.mapping.confirm { select = true },       ;            -- Manually trigger a completion from nvim-cmp.   L            --  Generally you don't need this, because nvim-cmp will display   I            --  completions whenever it has completion options available.   4            ['<C-Space>'] = cmp.mapping.complete {},       O            -- Think of <c-l> as moving to the right of your snippet expansion.   5            --  So if you have a snippet that's like:   %            --  function $name($args)               --    $body               --  end               --   S            -- <c-l> will move you to the right of each of the expansion locations.   =            -- <c-h> is similar, except moving you backwards.   .            ['<C-l>'] = cmp.mapping(function()   :              if luasnip.expand_or_locally_jumpable() then   (                luasnip.expand_or_jump()                 end               end, { 'i', 's' }),   .            ['<C-h>'] = cmp.mapping(function()   2              if luasnip.locally_jumpable(-1) then                    luasnip.jump(-1)                 end               end, { 'i', 's' }),             },             sources = {   "            { name = 'nvim_lsp' },   !            { name = 'luasnip' },               { name = 'path' },             },   	        }   
      end,5��                         �                    �                         �                    �                         �                    �                         �                    �                                             �    !                     >                    �    "           
          P      
              �    #                  
   d             
       �    $                     �                    �    %                  
   �             
       �    &           
          �      
              �    '           
          �      
              �    (           
          
      
              �    )           
                
              �    *           
          R      
              �    +           
          �      
              �    ,           
          �      
              �    -           
          �      
              �    .                  
                 
       �    /                  
   D             
       �    0                  
   z             
       �    1                  
   �             
       �    3                  
   �             
       �    4                  
                
       �    5                  
   B             
       �    6                  
   �             
       �    8                  
   �             
       �    9                  
   �             
       �    :                  
   H             
       �    ;                  
   �             
       �    =                  
   �             
       �    >                  
   	             
       �    ?                  
   F	             
       �    @                  
   j	             
       �    A                  
   �	             
       �    B                  
   �	             
       �    C                  
   �	             
       �    D                  
   �	             
       �    E                  
   -
             
       �    F                     Z
                    �    G                     �
                    �    H                     �
                    �    I                  
   �
             
       �    J                  
   �
             
       �    K                                         �    L                     F                    �    M                     e                    �    N                  
   u             
       �    O           
          �      
              �    P           
          �      
              �    Q                  
   �             
       �    R                  
   �             
       �    S                  
   �             
       �    T           
                
              �    U                                         �    V                     #                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f���     �         Z       5��                          �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f���    �         Z        }5��                         �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                      Z           V   =    f���     �                   �               �              Z   return { -- Autocompletion     'hrsh7th/nvim-cmp',     event = 'InsertEnter',     dependencies = {       'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',   6    -- Snippet Engine & its associated nvim-cmp source       {         'L3MON4D3/LuaSnip',         build = (function()   =        -- Build Step is needed for regex support in snippets   B        -- This step is not supported in many windows environments   =        -- Remove the below condition to re-enable on windows   H        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then             return           end   &        return 'make install_jsregexp'         end)(),       },         },   =    -- If you want to add a bunch of pre-configured snippets,   C    --    you can use this plugin to help you. It even has snippets   D    --    for various frameworks/libraries/etc. but you will have to   2    --    set up the ones that are useful for you.   &    -- 'rafamadriz/friendly-snippets',       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },           comp   :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),   
        },           sources = {              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,       }     },    5��            Z                      <             �                    s                       �      5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                       s          V   =    f���    �          s        { -- Autocompletion5��                                                5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             f���     �                 5��                          @                     5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                 V       f���     �                ,      -- Adds other completion capabilities.   L      --  nvim-cmp does not ship with all sources by default. They are split   7      --  into multiple repos for maintenance purposes.5��                          @      �               5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�          r      !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',�         o    5��                              Z             �                                             �                         9                    �                         Y                    5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         r      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         o    5��                              `       
      �                      
   
             
       �                      
   0             
       �                      
   R             
       5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        
      f       �      5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        �      f       �      5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        �      f       �      5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        �      f             5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                              f       P      5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        P      f       A      5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        A      f             5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                              f       �      5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        �      f       d      5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                        d      f       K      �               
          K      
              �               
          o      
              �               
          �      
              5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         r      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         o    5��                        K      `       ;      �                         ;                    5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                !      'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         r      !      'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�         o    5��                        ;      ^             �                      
                
       �                      
   8             
       �                      
   Z             
       5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         o    5��                              f             �               
                
              �               
          .      
              �               
          T      
              5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                )              'saadparwaiz1/cmp_luasnip',   %              'hrsh7th/cmp-nvim-lsp',   !              'hrsh7th/cmp-path',�         r      )              'saadparwaiz1/cmp_luasnip',   %              'hrsh7th/cmp-nvim-lsp',   !              'hrsh7th/cmp-path',�         o    5��                              r       �      �                         �                    �                                             �                         =                    5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �                '            'saadparwaiz1/cmp_luasnip',   #            'hrsh7th/cmp-nvim-lsp',               'hrsh7th/cmp-path',�         r      '            'saadparwaiz1/cmp_luasnip',   #            'hrsh7th/cmp-nvim-lsp',               'hrsh7th/cmp-path',�         o    5��                        �      l       �      �                      
   �             
       �                      
   �             
       �                      
   �             
       5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �   
             %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�   
      o    5��                 
       �      f       e      5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                V       f���     �   	             %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�         r      %          'saadparwaiz1/cmp_luasnip',   !          'hrsh7th/cmp-nvim-lsp',             'hrsh7th/cmp-path',�   	      o    5��   
              	       e      f             �    	           
                
              �    
           
          ?      
              �               
          [      
              5�_�   5   7           6   
        ����                                                                                                                                                                                                                                                                                                                            
                    V       f���     �                    'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         r          'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         o    5��   	                           T       �       5�_�   6   8           7   	        ����                                                                                                                                                                                                                                                                                                                            	                    V       f���     �                    'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         r          'saadparwaiz1/cmp_luasnip',       'hrsh7th/cmp-nvim-lsp',       'hrsh7th/cmp-path',�         o    5��                        �       T       �       �                         �                     �                         �                     �    	                                         5�_�   7   >           8           ����                                                                                                                                                                                                                                                                                                                                      
          V       f���     �      
          #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�   
      r      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�      
   o    5��                        �       `       �       5�_�   8   ?   9       >   o       ����                                                                                                                                                                                                                                                                                                                                      	          V       f��*     �   n                },5��    n                     ,                     5�_�   >               ?           ����                                                                                                                                                                                                                                                                                                                                      o          V       f��5   	 �               o     return { -- Autocompletion       'hrsh7th/nvim-cmp',       event = 'InsertEnter',       dependencies = {   8      -- Snippet Engine & its associated nvim-cmp source         {   #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',           'L3MON4D3/LuaSnip',           build = (function()   @          -- Build Step is needed for regex support in snippets.   E          -- This step is not supported in many windows environments.   @          -- Remove the below condition to re-enable on windows.   J          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then               return             end   (          return 'make install_jsregexp'           end)(),           dependencies = {   H          -- `friendly-snippets` contains a variety of premade snippets.   S          --    See the README about individual language/framework/plugin snippets:   ?          --    https://github.com/rafamadriz/friendly-snippets             -- {   .          --   'rafamadriz/friendly-snippets',   "          --   config = function()   C          --     require('luasnip.loaders.from_vscode').lazy_load()             --   end,             -- },   
        },         },       },       config = function()         -- See `:help cmp`         local cmp = require 'cmp'   '      local luasnip = require 'luasnip'         luasnip.config.setup {}             cmp.setup {           snippet = {   !          expand = function(args)   )            luasnip.lsp_expand(args.body)             end,   
        },   ?        completion = { completeopt = 'menu,menuone,noinsert' },       :        -- For an understanding of why these mappings were   ?        -- chosen, you will need to read `:help ins-completion`   
        --   T        -- No, but seriously. Please read `:help ins-completion`, it is really good!   -        mapping = cmp.mapping.preset.insert {   #          -- Select the [n]ext item   5          ['<C-n>'] = cmp.mapping.select_next_item(),   '          -- Select the [p]revious item   5          ['<C-p>'] = cmp.mapping.select_prev_item(),       ?          -- Scroll the documentation window [b]ack / [f]orward   2          ['<C-b>'] = cmp.mapping.scroll_docs(-4),   1          ['<C-f>'] = cmp.mapping.scroll_docs(4),       +          -- Accept ([y]es) the completion.   <          --  This will auto-import if your LSP supports it.   B          --  This will expand snippets if the LSP sent a snippet.   <          ['<C-y>'] = cmp.mapping.confirm { select = true },       ?          -- If you prefer more traditional completion keymaps,   2          -- you can uncomment the following lines   =          --['<CR>'] = cmp.mapping.confirm { select = true },   7          --['<Tab>'] = cmp.mapping.select_next_item(),   9          --['<S-Tab>'] = cmp.mapping.select_prev_item(),       9          -- Manually trigger a completion from nvim-cmp.   J          --  Generally you don't need this, because nvim-cmp will display   G          --  completions whenever it has completion options available.   2          ['<C-Space>'] = cmp.mapping.complete {},       M          -- Think of <c-l> as moving to the right of your snippet expansion.   3          --  So if you have a snippet that's like:   #          --  function $name($args)             --    $body             --  end             --   Q          -- <c-l> will move you to the right of each of the expansion locations.   ;          -- <c-h> is similar, except moving you backwards.   ,          ['<C-l>'] = cmp.mapping(function()   8            if luasnip.expand_or_locally_jumpable() then   &              luasnip.expand_or_jump()               end             end, { 'i', 's' }),   ,          ['<C-h>'] = cmp.mapping(function()   0            if luasnip.locally_jumpable(-1) then                 luasnip.jump(-1)               end             end, { 'i', 's' }),       \          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:   N          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps   
        },           sources = {             {               name = 'lazydev',   ^            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it               group_index = 0,             },              { name = 'nvim_lsp' },             { name = 'luasnip' },             { name = 'path' },   
        },         }       end,     }5��                                                  �                                              �                         1                     �                         J                     �                         ]                     �                         �                     �                         �                     �                         �                     �                         �                     �    	                     �                     �    
                                         �               
          (      
              �               
          g      
              �               
          �      
              �               
          �      
              �                      
   3             
       �               
          D      
              �               
          P      
              �                         w                    �                         �                    �               
          �      
              �               
          �      
              �               
          5      
              �               
          s      
              �               
          �      
              �               
          �      
              �               
          �      
              �               
                
              �               
          "      
              �                         0                    �                         9                    �                         @                    �                          E                    �    !                     [                    �    "                     r                    �    #                     �                    �    $                     �                    �    &                     �                    �    '                     �                    �    (           
          �      
              �    )                  
                
       �    *           
          =      
              �    +                     J                    �    ,                     S                    �    .                     �                    �    /                     �                    �    0                     	                    �    1                                         �    2                     e                    �    3           
          �      
              �    4           
          �      
              �    5           
          �      
              �    6           
                
              �    8           
          B      
              �    9           
          �      
              �    :           
          �      
              �    <           
          �      
              �    =           
                
              �    >           
          G      
              �    ?           
          �      
              �    A           
          �      
              �    B           
          	      
              �    C           
          3	      
              �    D           
          o	      
              �    E           
          �	      
              �    G           
          �	      
              �    H           
          
      
              �    I           
          _
      
              �    J           
          �
      
              �    L           
          �
      
              �    M           
          #      
              �    N           
          U      
              �    O           
          w      
              �    P           
          �      
              �    Q           
          �      
              �    R           
          �      
              �    S           
          �      
              �    T           
          0      
              �    U                  
   [             
       �    V                     �                    �    W                  
   �             
       �    X           
          �      
              �    Y           
          �      
              �    Z                  
                
       �    [                     ;                    �    \                  
   X             
       �    ]           
          f      
              �    _           
          �      
              �    `           
          �      
              �    a                     +                    �    b                     4                    �    c           
          F      
              �    d                  
   P             
       �    e                  
   l             
       �    f                  
   �             
       �    g           
          �      
              �    h           
          �      
              �    i           
                
              �    j           
          ,      
              �    k                     G                    �    l                     P                    �    m                     V                    �    n                      ]                     5�_�   8   :       >   9           ����                                                                                                                                                                                                                                                                                                                                                V       f���    �         o      #        'saadparwaiz1/cmp_luasnip',           'hrsh7th/cmp-nvim-lsp',           'hrsh7th/cmp-path',�   	      r    �      	          !      'saadparwaiz1/cmp_luasnip',         'hrsh7th/cmp-nvim-lsp',         'hrsh7th/cmp-path',5��                        �       `       �       �                         �                     �                         �                     �                         �                     5�_�   9   ;           :   o       ����                                                                                                                                                                                                                                                                                                                                                V       f��    �   n   p            }5��    n                     &                     5�_�   :   <           ;   o       ����                                                                                                                                                                                                                                                                                                                                                V       f��     �   o   p           5��    o                      '                     �    o                      '                     5�_�   ;   =           <   p        ����                                                                                                                                                                                                                                                                                                                                                V       f��     �   p   q           5��    p                      (                     �    p                      (                     �    p                      (                     5�_�   <               =   q        ����                                                                                                                                                                                                                                                                                                                                                V       f��     �   p   r           �   o   r           5��    p                   	   (              	       �    p           	           (      	               �    o                      '                     �    o                      '                     �    o                      '                     5��