return {
  {
    'mbbill/undotree',
    lazy = false,
    keys = {
      vim.keymap.set('n', '<leader>uu', vim.cmd.UndotreeToggle),
    },
  },
}
