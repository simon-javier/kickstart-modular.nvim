return {
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    opts = {
      port = 42069,
    }, -- lazy.nvim will implicitly calls `setup {}`
    keys = {
      vim.keymap.set('n', '<leader>ut', '<cmd>TypstPreviewToggle<CR>', { desc = 'Toggle Typst Preview' }),
      vim.keymap.set('n', '<leader>ts', '<cmd>TypstPreviewSyncCursor<CR>', { desc = 'Sync Typst Cursor' }),
    },
  },
}
