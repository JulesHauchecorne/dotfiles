
return require('packer').startup(
    function(use)
use 'wbthomason/packer.nvim'
use 'davetron5000/java-javadoc-vim'
use 'puremourning/vimspector'
use {'junegunn/fzf.vim', run = '{-> fzf#install}'}
use 'junegunn/fzf'
use 'arcticicestudio/nord-vim'
use 'morhetz/gruvbox'
use 'tpope/vim-fugitive'
use 'jiangmiao/auto-pairs'
use 'mattn/emmet-vim'
use 'kyazdani42/nvim-web-devicons'
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  -- We recommend updating the parsers on update
use 'nvim-lua/popup.nvim'
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use {'nvim-telescope/telescope-fzf-native.nvim' ,  run = 'make' }
use 'kyazdani42/nvim-tree.lua'
use 'neovim/nvim-lspconfig'
use {'hrsh7th/nvim-cmp' , requires = { 'hrsh7th/vim-vsnip', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp' , 'hrsh7th/cmp-path'} }
use 'mfussenegger/nvim-jdtls'
use 'RishabhRD/popfix'
use 'RishabhRD/nvim-cheat.sh'
use 'onsails/lspkind-nvim'
use 'RishabhRD/nvim-lsputils'
use 'tyru/open-browser.vim'
use 'aklt/plantuml-syntax'
use "numToStr/FTerm.nvim"
use 'crusoexia/vim-monokai'
use 'iamcco/markdown-preview.nvim'
use 'psf/black'
use 'tami5/lspsaga.nvim'
use "ray-x/lsp_signature.nvim"
        end
)
