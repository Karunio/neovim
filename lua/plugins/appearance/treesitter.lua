return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		lazy = false,
		config = function ()
			require('rainbow-delimiters.setup').setup {
				strategy = {
					[''] = 'rainbow-delimiters.strategy.global',
				},
				query = {
					[''] = 'rainbow-delimiters',
				},
			}
		end
	}
}
