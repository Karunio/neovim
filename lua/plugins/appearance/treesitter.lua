return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"HiPhish/nvim-ts-rainbow2",
	},
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = false,
			ensure_installed = {
				"c",
				"cpp",
				"vim",
				"vimdoc",
				"lua",
				"jsdoc",
				"json",
				"jsonc",
				"typescript",
				"javascript",
				"yaml",
				"gitignore",
				"rust",
				"dockerfile",
				"terraform",
				"toml",
				"comment",
				"regex",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			rainbow = {
				enable = true,
				-- list of languages you want to disable the plugin for
				disable = {},
				-- Which query to use for finding delimiters
				query = "rainbow-parens",
				-- Highlight the entire buffer all at once
				strategy = require("ts-rainbow").strategy.global,
			},
		})
	end,
}
