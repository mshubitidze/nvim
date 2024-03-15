-- {
--   'EdenEast/nightfox.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme 'carbonfox'
--
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- },

return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#000000',
          crust = '#000000',
        },
      },
      integrations = {
        mini = {
          enabled = true,
        },
      },
    }
    vim.cmd.colorscheme 'catppuccin-mocha'

    vim.cmd.hi 'Comment gui=none'
  end,
}
