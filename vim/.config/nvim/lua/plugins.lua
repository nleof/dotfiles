vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Completion and linting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'neovim/nvim-lspconfig',
    'nvim-lua/completion-nvim',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {
    'hoob3rt/lualine.nvim',
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    -- 'ayu-theme/ayu-vim',
    'Shatur/neovim-ayu',
  }
end)
