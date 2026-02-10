return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		event = { "BufReadPost", "BufNewFile" },
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
		opts = {
			strategy = {
				[''] = 'rainbow-delimiters.strategy.global',
			},
			query = {
				[''] = 'rainbow-delimiters',
			},
		},
	}
}
