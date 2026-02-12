return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		},
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		main = "rainbow-delimiters.setup",
		opts = {},
	},
}
