return {
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     require('catppuccin').setup {
  --       flavour = 'mocha',
  --       color_overrides = {
  --         mocha = {
  --           base = '#000000',
  --           mantle = '#000000',
  --           crust = '#000000',
  --         },
  --       },
  --       integrations = {
  --         mini = {
  --           enabled = true,
  --         },
  --       },
  --     }
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    init = function()
      require('nightfox').setup {
        palettes = {
          duskfox = {
            bg1 = '#000000',
            bg0 = '#090909',
            bg3 = '#121820',
            sel0 = '#131b24',
          },
        },
        specs = {
          all = {
            inactive = 'bg0',
          },
          duskfox = {
            inactive = '#090909',
          },
        },
        groups = {
          all = {
            NormalNC = { fg = 'fg1', bg = 'inactive' },
          },
        },
      }
      vim.cmd.colorscheme 'duskfox'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
