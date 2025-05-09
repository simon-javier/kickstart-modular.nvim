return {
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker',
        transparent = true,
      }
      -- Enable theme
      vim.cmd.colorscheme 'onedark'
    end,
  },
}
