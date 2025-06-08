return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local custom_onedark = require 'lualine.themes.onedark'

      -- Change the background of lualine_c section for normal mode
      custom_onedark.normal.c.bg = '#000000'

      require('lualine').setup {
        options = { theme = custom_onedark },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = {
            {
              'branch',
              on_click = function(c, l, r)
                vim.cmd 'G'
              end,
            },
            'diff',
            'diagnostics',
          },
          lualine_c = { { 'filename', path = 4 } },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      }
    end,
  },
}
