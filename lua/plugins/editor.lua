return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.opt.timeout = true
			vim.opt.timeoutlen = 100
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
