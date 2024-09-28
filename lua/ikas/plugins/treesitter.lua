-- return {
--   'nvim-treesitter/nvim-treesitter',
--   version = false, -- last release is way too old and doesn't work on Windows
--   build = ':TSUpdate',
--   event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'User' },
--   -- event = { 'LazyFile', 'VeryLazy' },
--   lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
--   -- init = function(plugin)
--   --   -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
--   --   -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
--   --   -- no longer trigger the **nvim-treesitter** module to be loaded in time.
--   --   -- Luckily, the only things that those plugins need are the custom queries, which we make available
--   --   -- during startup.
--   --   require('lazy.core.loader').add_to_rtp(plugin)
--   --   require 'nvim-treesitter.query_predicates'
--   -- end,
--   cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
--   keys = {
--     { '<c-space>', desc = 'Increment Selection' },
--     { '<bs>', desc = 'Decrement Selection', mode = 'x' },
--   },
--   opts_extend = { 'ensure_installed' },
--   ---@type TSConfig
--   ---@diagnostic disable-next-line: missing-fields
--   opts = {
--     highlight = { enable = true },
--     indent = { enable = true },
--     ensure_installed = {
--       'bash',
--       'c',
--       'cpp',
--       'diff',
--       'go',
--       'html',
--       'javascript',
--       'jsdoc',
--       'json',
--       'jsonc',
--       'lua',
--       'luadoc',
--       'luap',
--       'markdown',
--       'markdown_inline',
--       'printf',
--       'python',
--       'query',
--       'regex',
--       'rust',
--       'toml',
--       'tsx',
--       'typescript',
--       'vim',
--       'vimdoc',
--       'xml',
--       'yaml',
--     },
--     incremental_selection = {
--       enable = true,
--       keymaps = {
--         init_selection = '<C-space>',
--         node_incremental = '<C-space>',
--         scope_incremental = false,
--         node_decremental = '<bs>',
--       },
--     },
--     textobjects = {
--       move = {
--         enable = true,
--         goto_next_start = { [']f'] = '@function.outer', [']c'] = '@class.outer', [']a'] = '@parameter.inner' },
--         goto_next_end = { [']F'] = '@function.outer', [']C'] = '@class.outer', [']A'] = '@parameter.inner' },
--         goto_previous_start = { ['[f'] = '@function.outer', ['[c'] = '@class.outer', ['[a'] = '@parameter.inner' },
--         goto_previous_end = { ['[F'] = '@function.outer', ['[C'] = '@class.outer', ['[A'] = '@parameter.inner' },
--       },
--     },
--   },
--   ---@param opts TSConfig
--   config = function(_, opts)
--     require('nvim-treesitter.configs').setup(opts)
--   end,
-- }
return {
  'nvim-treesitter/nvim-treesitter',
  version = false,
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'User' },
  lazy = vim.fn.argc(-1) == 0,
  config = function()
    require('nvim-treesitter.configs').setup {
      -- A list of parser names, or "all"
      ensure_installed = { 'bash', 'c', 'html', 'go', 'lua', 'markdown', 'python', 'vim', 'vimdoc', 'rust', 'javascript', 'cpp' },
      -- ensure_installed = {
      --   'vimdoc',
      --   'javascript',
      --   'typescript',
      --   'c',
      --   'lua',
      --   'rust',
      --   'jsdoc',
      --   'bash',
      -- },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
      auto_install = true,

      indent = {
        enable = true,
      },

      highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = { 'markdown' },
      },
    }

    local treesitter_parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    treesitter_parser_config.templ = {
      install_info = {
        url = 'https://github.com/vrischmann/tree-sitter-templ.git',
        files = { 'src/parser.c', 'src/scanner.c' },
        branch = 'master',
      },
    }

    vim.treesitter.language.register('templ', 'templ')
  end,
}
-- return {
--   {
--     'nvim-treesitter/nvim-treesitter',
--     dependencies = {
--       { dir = '~/plugins/tree-sitter-lua' },
--       { 'reasonml-editor/tree-sitter-reason' },
--     },
--
--     build = ':TSUpdate',
--     branch = 'main',
--     lazy = false,
--     config = function()
--       local M = {}
--
--       M.setup = function()
--         local group = vim.api.nvim_create_augroup('custom-treesitter', { clear = true })
--
--         require('nvim-treesitter').setup {
--           -- ensure_install = { "core", "stable" },
--         }
--
--         local syntax_on = {
--           elixir = true,
--           php = true,
--         }
--
--         vim.api.nvim_create_autocmd('FileType', {
--           group = group,
--           callback = function(args)
--             local bufnr = args.buf
--             local ft = vim.bo[bufnr].filetype
--             pcall(vim.treesitter.start)
--
--             if syntax_on[ft] then
--               vim.bo[bufnr].syntax = 'on'
--             end
--           end,
--         })
--
--         vim.api.nvim_create_autocmd('User', {
--           pattern = 'TSUpdate',
--           callback = function()
--             local parsers = require 'nvim-treesitter.parsers'
--
--             parsers.lua = {
--               tier = 0,
--
--               ---@diagnostic disable-next-line: missing-fields
--               install_info = {
--                 path = '~/plugins/tree-sitter-lua',
--                 files = { 'src/parser.c', 'src/scanner.c' },
--               },
--             }
--
--             -- parsers.menhir = {
--             --   tier = 0,
--             --
--             --   ---@diagnostic disable-next-line: missing-fields
--             --   install_info = {
--             --     path = "~/git/tree-sitter-ocaml",
--             --     location = "grammars/menhir",
--             --     files = { "src/parser.c", "src/scanner.c" },
--             --   },
--             -- }
--
--             parsers.cram = {
--               tier = 0,
--
--               ---@diagnostic disable-next-line: missing-fields
--               install_info = {
--                 path = '~/git/tree-sitter-cram',
--                 files = { 'src/parser.c' },
--               },
--             }
--
--             parsers.reason = {
--               tier = 0,
--
--               ---@diagnostic disable-next-line: missing-fields
--               install_info = {
--                 url = 'https://github.com/reasonml-editor/tree-sitter-reason',
--                 files = { 'src/parser.c', 'src/scanner.c' },
--                 branch = 'master',
--               },
--             }
--
--             parsers.ocaml_mlx = {
--               tier = 0,
--
--               install_info = {
--                 location = 'grammars/mlx',
--                 url = 'https://github.com/ocaml-mlx/tree-sitter-mlx',
--                 files = { 'src/parser.c', 'src/scanner.c' },
--                 branch = 'master',
--               },
--               filetype = 'ocaml.mlx',
--             }
--           end,
--         })
--       end
--
--       M.setup()
--     end,
--   },
-- }
-- return {
--
--   -- Highlight, edit, and navigate code
--   'nvim-treesitter/nvim-treesitter',
--   build = ':TSUpdate',
--   branch = 'main',
--   config = function()
--     -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
--
--     ---@diagnostic disable-next-line: missing-fields
--     require('nvim-treesitter.configs').setup {
--       ensure_installed = { 'bash', 'c', 'html', 'go', 'lua', 'markdown', 'python', 'vim', 'vimdoc', 'rust', 'javascript', 'cpp' },
--       -- Autoinstall languages that are not installed
--       auto_install = true,
--       highlight = { enable = true },
--       indent = { enable = true },
--     }
--   end,
-- }
