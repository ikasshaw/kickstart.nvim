return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():add()
        end,
        desc = 'Harpoon File',
      },
      {
        '<leader>e',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'Harpoon Quick Menu',
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        '<leader>' .. i,
        function()
          require('harpoon'):list():select(i)
        end,
        desc = 'Harpoon to File ' .. i,
      })
    end
    return keys
  end,
}
-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--   },
--   config = function()
--     -- basic telescope configuration
--
--   end,
--   keys = {
--     {
--       '<leader>a',
--       function()
--         require('harpoon'):list():add()
--       end,
--       desc = 'Harpoon file',
--     },
--     {
--       '<C-e>',
--       function()
--         local harpoon = require 'harpoon'
--         harpoon.ui:toggle_quick_menu(harpoon:list())
--       end,
--       desc = 'Harpoon quick menu',
--     },
--
--     for i = 1, 5 do
--       table.insert(keys, {
--         "<leader>" .. i,
--         function()
--           require("harpoon"):list():select(i)
--         end,
--         desc = "Harpoon to File " .. i,
--       })
--     end
-- {
--   '<C-n>',
--   function()
--     require('harpoon'):list():select(1)
--   end,
--   desc = 'Harpoon to file 1',
-- },
-- {
--   '<C-e>',
--   function()
--     local conf = require('telescope.config').values
--     local function toggle_telescope(harpoon_files)
--       local file_paths = {}
--       for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--       end
--
--       require('telescope.pickers')
--         .new({}, {
--           prompt_title = 'Harpoon',
--           finder = require('telescope.finders').new_table {
--             results = file_paths,
--           },
--           previewer = conf.file_previewer {},
--           sorter = conf.generic_sorter {},
--         })
--         :find()
--     end
--     toggle_telescope(require('harpoon'):list())
--   end,
--   desc = 'Open Harpoon window (Telescope)',
-- },
--   },
-- }
