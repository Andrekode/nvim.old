require("nvim-tree").setup({
	hijack_netrw = true,
	sort_by = "case_sensitive",
	remove_keymaps = { "<C-e>" },
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
