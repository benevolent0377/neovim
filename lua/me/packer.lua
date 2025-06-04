-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]
-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	"catppuccin/nvim", 
	as = 'catppuccin',
	config = function()
		vim.cmd('colorscheme catppuccin')

  end})

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
  
  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	   requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'mason-org/mason.nvim', tag = 'v1.x'},
		{'mason-org/mason-lspconfig.nvim', tag = 'v1.x'},

		-- Autocomplete
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},

	},

  }

  --use ('nvim-neo-tree/neo-tree.nvim')
  use ('hrsh7th/cmp-buffer')
  use ('hrsh7th/cmp-path')
  use ('hrsh7th/cmp-cmdline')

  use ('CRAG666/code_runner.nvim')

  use {

      'folke/noice.nvim',
      requires = {

        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify"
      },
  }

  use ('willothy/nvim-cokeline')

  use ('nvim-tree/nvim-tree.lua')

  use {
      'doctorfree/cheatsheet.nvim',

      requires = {
          {'nvim-telescope/telescope.nvim'},
          {'nvim-lua/popup.nvim'},
          {'nvim-lua/plenary.nvim'},
      }
  }

  use ('HampusHauffman/block.nvim')

  use {
    'mfussenegger/nvim-dap',
    requires = {
        {'rcarriga/nvim-dap-ui'},
        {'jay-babu/mason-nvim-dap.nvim'},
        {'theHamsta/nvim-dap-virtual-text'},
    },
}

    use {
        "rcarriga/nvim-dap-ui",
        requires =
	{"mfussenegger/nvim-dap"},
        {"nvim-neotest/nvim-nio"},
    }

    use ('folke/lazydev.nvim')

    use ('folke/which-key.nvim')

    use ("m4xshen/hardtime.nvim")

    use ('echasnovski/mini.icons')
    
    use({
  "xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup {
      enable = true,
    }
  end
})
-- Autocmd for nvim-tree
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guibg=none guifg=#9da5b3")
end)
