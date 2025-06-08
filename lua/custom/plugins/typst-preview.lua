return {
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    opts = {}, -- lazy.nvim will implicitly calls `setup {}`
    keys = {
      vim.keymap.set('n', '<leader>ut', '<cmd>TypstPreviewToggle<CR>', { desc = 'Toggle Typst Preview' }),
    },
  },
}
