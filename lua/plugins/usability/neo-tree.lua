return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					use_libuv_file_watcher = true,
					follow_current_file = {
	                    enabled = true,
						leave_dirs_open = true,
					},
				},
			})
	
			vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", { desc = "Neotree" })
		end,
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
}
