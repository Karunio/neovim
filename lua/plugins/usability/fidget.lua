return {
	"j-hui/fidget.nvim",
	version = "*",
	event = "VeryLazy",
	config = function ()
		local fidget = require("fidget").setup({
			notification = {
				override_vim_notify = true,
			}
		})

		vim.notify = fidget.notify
	end
}
