return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
			"antosha417/nvim-lsp-file-operations",
		},
		opts = {
			filesystem = {
				use_libuv_file_watcher = true,
				follow_current_file = {
					enabled = true,
					leave_dirs_open = true,
				},
			},
		},
		keys = {
			{ "<leader>n", "<cmd>Neotree toggle<CR>", "n", desc = "NeoTree" },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 100
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
