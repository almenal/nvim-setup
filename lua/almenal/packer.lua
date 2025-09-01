-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd.packadd('packer.nvim')

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()


require('pckr').add{
  ------------ theprimeagen's selection
  'wbthomason/packer.nvim';
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  };
  "theprimeagen/harpoon";
  "mbbill/undotree";
  "tpope/vim-fugitive";
  {
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
  };
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"};
  "nvim-treesitter/playground";
  "nvim-treesitter/nvim-treesitter-context";

  ------------------------ Themes
  --- to set a theme, run :colorscheme <theme>
  "ellisonleao/gruvbox.nvim";
  "navarasu/onedark.nvim";
  "EdenEast/nightfox.nvim";
  -- pckr doesn't support aliases for packages so this would be imported as 'nvim'
  -- "rose-pine/neovim"; 


  ------------------------ Custom
  -- Code folding for Python
  "tmhedberg/SimpylFold";
  -- Black python formatter (dropped -- this plugin doesn't work well with neovim)
  "averms/black-nvim";

  -- R setup
  -- use("jalvesaq/Nvim-R") -- this has been superseeded by R.nvim
  "R-nvim/R.nvim";

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  };
  -- Show git diffs in the gutter (added lines, etc)
  "lewis6991/gitsigns.nvim";

  -- TODO comment highlighting
  "folke/todo-comments.nvim";

  -- Highlight matches while in visual mode
  "wurli/visimatch.nvim";

  -- autocompletion for emojis when typing :
  "hrsh7th/cmp-emoji";

  {"mistricky/codesnap.nvim", run = "make"};

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
}

