-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- a fuzzy finder for searching file
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- rose-pine colorschema
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- syntax highlighter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- for jump between files quickly
  use('theprimeagen/harpoon')

  -- undo tree
  use('mbbill/undotree')

  -- git in vim
  use('tpope/vim-fugitive')

  -- lsp!!!! language server protocol
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  -- for neovim config dev
  use('folke/neodev.nvim')

  -- gradually displaying the colorcolumn as the user approaches it
  use('Bekaboo/deadcolumn.nvim')

  -- `gcc` for comment
  use('tpope/vim-commentary')

  -- autopairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- auto tag for typescript
  use('windwp/nvim-ts-autotag')

  -- github copilot in neovim!
  use('github/copilot.vim')

end)
