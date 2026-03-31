-- Debug Adapter Protocol
---@module 'lazy'
---@type LazySpec
return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'leoluz/nvim-dap-go',
    { 'rcarriga/nvim-dap-ui', dependencies = { 'nvim-neotest/nvim-nio' } },
  },
  config = function()
    require('dap-go').setup()
    require('dapui').setup()
    vim.keymap.set('n', '<leader>db', require('dap').toggle_breakpoint, { desc = '[D]ap [B]reakpoint' })
    vim.keymap.set('n', '<leader>dc', require('dap').continue, { desc = '[D]ap [C]ontinue' })
    vim.keymap.set('n', '<leader>du', require('dapui').toggle, { desc = '[D]ap [U]I' })
  end,
}
