return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			check_ts = true,
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"kylechui/nvim-surround",
		branch = "main",
		event = "VeryLazy",
		opts = {},
	}
}
