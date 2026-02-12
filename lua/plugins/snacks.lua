return {
	"folke/snacks.nvim",
	version = "*",
	opts = {
		statuscolumn = {
			enabled = true,
			folds = {
				open = true,
				git_hl = true,
			},
		},

		indent = {
			enabled = true,
			animate = {
				enabled = false,
			},
		},

		words = {
			enabled = true,
		},

		notifier = {
			enabled = true,
			timeout = 2000,
			sytle = "minimal",
		},

		dashboard = {
			enabled = true,
		},
	},
}
