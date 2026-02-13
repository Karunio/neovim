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

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("nvim-treesitter-highlight", { clear = true }),
				callback = function()
					local ok, _ = pcall(vim.treesitter.start)
					if not ok then
						return
					end

					vim.opt_local.foldmethod = "expr"
					vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"

					vim.opt_local.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
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
