return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local parsers = {
				"c",
				"cpp",
				"c_sharp",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"html",
				"css",
				"javascript",
				"typescript",
				"jsx",
				"tsx",
				"java",
				"python",
				"bash",
				"diff",
				"json",
				"dockerfile",
				"xml",
				"yaml",
				"toml",
				"ssh_config",
			}

			require("nvim-treesitter").install(parsers)

			local patterns = {}
			for _, parser in ipairs(parsers) do
				local parser_patterns = vim.treesitter.language.get_filetypes(parser)
				for _, pp in pairs(parser_patterns) do
					table.insert(patterns, pp)
				end
			end

			vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
			vim.wo[0][0].foldmethod = "expr"

			vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("nvim-treesitter-highlight", { clear = true }),
				pattern = patterns,
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		main = "rainbow-delimiters.setup",
		opts = {},
	},
}
