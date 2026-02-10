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
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup()

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find_files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live_grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "help_tags" })
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		build = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	},
}
