return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true,
		},
	},
	{
		"kylechui/nvim-surround",
		branch = "main",
		event = "VeryLazy",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		opts = {},
	}
}
