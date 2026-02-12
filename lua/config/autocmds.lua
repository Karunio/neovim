vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		vim.notify("Lazy Plugins Load Completed 🚀", vim.log.levels.INFO, {
			title = "Lazy.nvim",
		})
	end,
})
