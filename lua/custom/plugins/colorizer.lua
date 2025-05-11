return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({
        'css',
        'javascript',
        html = { mode = 'background' },
      }, { mode = 'foreground' })
    end,
    keys = {
      {
        '<leader>uz',
        '<cmd>ColorizerToggle<CR>',
        'n',
        desc = 'Toggle Colori[z]er',
      },
    },
  },
}
