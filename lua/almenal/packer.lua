-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  ------------ theprimeagen's selection
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter-context")

  ------------------------ Themes
  use { "ellisonleao/gruvbox.nvim" }
  -- use 'navarasu/onedark.nvim'
 --  use({
 --      'rose-pine/neovim', as = 'rose-pine',
 --      config = function()
 --    	  vim.cmd('colorscheme rose-pine')
 --      end
 --  }


  ------------------------ Custom
  -- Code folding for Python
  use("tmhedberg/SimpylFold")
  -- Black python formatter (dropped -- this plugin doesn't work well with neovim)
  -- use("averms/black-nvim")

  -- R setup
  -- use("jalvesaq/Nvim-R") -- this has been superseeded by R.nvim
  use("R-nvim/R.nvim")

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- Show git diffs in the gutter (added lines, etc)
  use("lewis6991/gitsigns.nvim")

  -- Auto close parenthesis, quotes, etc
  -- I don't like it, it interferes with stuff a lot.
  -- use("m4xshen/autoclose.nvim")


  -- Extra plugins in the theprimeagen dotfiles repo that I don't need for now
  --use("folke/zen-mode.nvim")
  --use("theprimeagen/refactoring.nvim")
  --use("github/copilot.vim")
  --use("eandrju/cellular-automaton.nvim")
  --use("laytan/cloak.nvim")
  --use({
  --    "folke/trouble.nvim",
  --    config = function()
  --        require("trouble").setup {
  --            icons = false,
  --            -- your configuration comes here
  --            -- or leave it empty to use the default settings
  --            -- refer to the configuration section below
  --        }
  --    end
  --})


  use("hrsh7th/cmp-emoji")

end)

