return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Pin buffer in harpoon' })
    vim.keymap.set('n', '<leader>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Open harpoon pinned buffer list' })
    vim.keymap.set('n', '<leader>p', function() harpoon:list():prev() end, { desc = 'Go to the previous pinned buffer in the harpoon list' })
    vim.keymap.set('n', '<leader>n', function() harpoon:list():next() end, { desc = 'Go to the next pinned buffer in the harpoon list' })
  end,
}
