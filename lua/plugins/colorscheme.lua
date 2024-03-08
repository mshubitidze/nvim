return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'carbonfox'

    vim.cmd.hi 'Comment gui=none'
  end,
}
