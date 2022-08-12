return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- telescope stuff
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-file-browser.nvim")

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
    use 'p00f/nvim-ts-rainbow'

	use("nvim-treesitter/playground")
	use("romgrk/nvim-treesitter-context")

	-- commenter
	use("numToStr/Comment.nvim")

	-- autopair
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- git stuff
    use {
     'TimUntersberger/neogit',
      requires = {
         'nvim-lua/plenary.nvim',
         'sindrets/diffview.nvim'
       }
     }

     use {
        'lewis6991/gitsigns.nvim',
          config = function()
            require('gitsigns').setup()
  end
  }

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
