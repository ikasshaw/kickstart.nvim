return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  config = function()
    require('harpoon').setup()

    local harpoon = require 'harpoon'
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-t>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-s>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)

    -- vim.keymap.set('n', '<leader>a', mark.add_file)
    -- vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
    --
    -- vim.keymap.set('n', '<C-h>', function()
    --   ui.nav_file(1)
    -- end)
    -- vim.keymap.set('n', '<C-t>', function()
    --   ui.nav_file(2)
    -- end)
    -- vim.keymap.set('n', '<C-n>', function()
    --   ui.nav_file(3)
    -- end)
    -- vim.keymap.set('n', '<C-s>', function()
    --   ui.nav_file(4)
  end,
}
