-- tailwind-tools.lua
return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  ft = { 'html', 'blade', 'php' },
  opts = {
    server = {
      override = true, -- setup the server from the plugin if true
    },
    document_color = {
      enabled = false, -- can be toggled by commands
      kind = 'background', -- "inline" | "foreground" | "background"
      inline_symbol = '󰝤 ', -- only used in inline mode
      debounce = 200, -- in milliseconds, only applied in insert mode
    },
  },
  config = function(_, opts)
    require('tailwind-tools').setup(opts)

    -- Auto-sort Tailwind classes on save
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.html', '*.blade.php', '*.php' },
      callback = function()
        vim.cmd 'TailwindSort'
      end,
    })
  end,
  keys = {
    { '<leader>tC', ':TailwindConcealToggle<CR>', desc = 'Toggle Tailwind Conceal' },
    { '<leader>ts', ':TailwindSort<CR>', desc = 'Sort Tailwind Classes' },
    { '<leader>tc', ':TailwindColorToggle<CR>', desc = 'Toggle Tailwind Colors' },
  },
}
