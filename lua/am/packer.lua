return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- telescope stuff
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("tzachar/cmp-tabnine", { run = "./install.sh" })
	use("onsails/lspkind-nvim")
	use("nvim-lua/lsp_extensions.nvim")
	use("glepnir/lspsaga.nvim")
	use("simrat39/symbols-outline.nvim")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("simrat39/rust-tools.nvim")
	-- null ls
	--	use("jose-elias-alvarez/null-ls.nvim")

	-- formatter
	use("sbdchd/neoformat")

	-- lsp utils

	-- primestuff harpoon git worktree
	use("ThePrimeagen/git-worktree.nvim")
	use("ThePrimeagen/harpoon")

	-- treeshitter
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")

	use("romgrk/nvim-treesitter-context")
	use("nvim-treesitter/playground")

	-- commenter
	use("numToStr/Comment.nvim")

	-- autopair
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	-- indent blankline
	-- use("lukas-reineke/indent-blankline.nvim")

	-- git stuff
	use("TimUntersberger/neogit")
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- undoo tree
	use("mbbill/undotree")

	-- friendly snippets
	use("rafamadriz/friendly-snippets")
	-- color schemes
	use("gruvbox-community/gruvbox")
	use("folke/tokyonight.nvim")

	-- status line
	use("nvim-lualine/lualine.nvim")
end)
