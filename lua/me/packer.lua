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
  use ({
      "sphamba/smear-cursor.nvim",

      opts = {
          -- Smear cursor when switching buffers or windows.
          smear_between_buffers = true,

          -- Smear cursor when moving within line or to neighbor lines.
          -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
          smear_between_neighbor_lines = true,

          -- Draw the smear in buffer space instead of screen space when scrolling
          scroll_buffer_space = true,

          -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
          -- Smears will blend better on all backgrounds.
          legacy_computing_symbols_support = false,

          -- Smear cursor in insert mode.
          -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
          smear_insert_mode = true,
          cursor_color = "#ff8800",
          stiffness = 0.3,
          trailing_stiffness = 0.1,
          trailing_exponent = 5,
          never_draw_over_target = true,
          hide_target_hack = true,
          gamma = 1,
      }})
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

    use('ThePrimeagen/vim-be-good')

    use({
        'nvzone/typr',
        requires =
        {'nvzone/volt'},
        cmd = {'Typr', 'TyprStats'},
    })

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
