return {
  {
    'windwp/nvim-autopairs',
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },

  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {}
      vim.keymap.set('n', '\\', ':Neotree toggle<CR>', { desc = 'Toggle NeoTree' })
    end,
  },

  {
    'Exafunction/codeium.vim',
    config = function()
      vim.keymap.set('i', '<c-g>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true })
      vim.keymap.set('i', '<c-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true })
      vim.keymap.set('i', '<c-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true })
      -- vim.keymap.set('i', '<c-x>', function()
      --   return vim.fn['codeium#Clear']()
      -- end, { expr = true })
    end,
  },

  { 'JoosepAlviste/nvim-ts-context-commentstring' },

  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },

  {
    'sourcegraph/sg.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('sg').setup {}
    end,
  },

  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {}
    end,
  },

  { 'christoomey/vim-tmux-navigator' },
}
