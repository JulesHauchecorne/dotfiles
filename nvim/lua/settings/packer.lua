vim.cmd([[packadd packer.nvim]])
--
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
--
--	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
--
--	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
--
--	-- Undotree
	use("https://github.com/mbbill/undotree")
--
--	-- vim-fugitive for git
	--use('tpope/vim-fugitive')
--
--	-- Lsp zero
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "Jezda1337/cmp_bootstrap" },
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "hrsh7th/cmp-vsnip" },
		},
	})
--
--	-- java
	use("mfussenegger/nvim-jdtls")

	use("nvim-tree/nvim-tree.lua")
	-- colorscheme
	use("crusoexia/vim-monokai")
	use("arcticicestudio/nord-vim")
	use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

	-- html quickness
	use("mattn/emmet-vim")

	-- markdown preview
	use("iamcco/markdown-preview.nvim")
	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	-- git blame on line
	use("tveskag/nvim-blame-line")

	-- ez commenting
	use("terrortylor/nvim-comment")

	-- tabs
	-- use { "rafcamlet/tabline-framework.nvim",  requires = "kyazdani42/nvim-web-devicons" }
	use("kyazdani42/nvim-web-devicons")

--	-- buffer tab line
--	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
--
	-- auto closing brackets
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	-- auto tags
	use("windwp/nvim-ts-autotag")

	-- Telescope ui on nvim core , ex: code actions
	use({ "nvim-telescope/telescope-ui-select.nvim" })
--
	-- formatting and code action
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use("MunifTanjim/prettier.nvim")

	-- lsp signature, parameter support for functions
	-- use { "ray-x/lsp_signature.nvim" }
--
--	-- terminals
--	-- use({
--	-- 	"akinsho/toggleterm.nvim",
--	-- 	tag = "*",
--	-- 	config = function()
--	-- 		require("toggleterm").setup()
--	-- 	end,
--	-- })
--
--	-- color on #0000
	use("norcalli/nvim-colorizer.lua")
--
	-- indentation lines
	use("lukas-reineke/indent-blankline.nvim")
--
--	-- leetcode problems inside nvim
--	-- added this line in split.lua file
--	--  vim.cmd("wincmd x")
--	-- at line 31, so the opening window split would have code window largest.
--	-- use("Dhanus3133/LeetBuddy.nvim")
--
--	-- REST api testing routes without postman
--	-- for rest files
--	use("diepm/vim-rest-console")
--	-- for http files
--	use({ "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } })
--
	-- lsp completion icons
	use("onsails/lspkind.nvim")

--	-- vim test for running tests
--	use("vim-test/vim-test")
--
	-- Snippets
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")
	-- use({
	-- 	"L3MON4D3/LuaSnip",
	-- 	-- follow latest release.
	-- 	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- 	-- install jsregexp (optional!:).
	-- 	run = "make install_jsregexp",
	-- })
	use("rafamadriz/friendly-snippets")

	-- packer
--    use({ "folke/noice.nvim", requires = {{ "MunifTanjim/nui.nvim" }, { "rcarriga/nvim-notify"} }})
end)