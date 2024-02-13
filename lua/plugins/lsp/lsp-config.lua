local on_attach = function(_, bufnr)
	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "definition" })
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "hover" })
	vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "implementation" })
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { buffer = bufnr, desc = "type_definition" })
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "rename" })
	--vim.keymap.set("n", "K", vim.lsp.buf.signature_help, { buffer = bufnr,desc = "signature_help" })
	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "code_action" })
	vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = bufnr, desc = "references" })
	vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { buffer = bufnr, desc = "formatting" })
end

return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"folke/neodev.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("neodev").setup()

			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"vtsls",
					"eslint",
					"rust_analyzer",
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
							on_attach = on_attach,
						})
					end,
				},
			})

			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "diagnostic open_float" })
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "diagnostic goto_prev" })
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "diagnostic goto_next" })
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "diagnostic setloclist" })
		end,
	},
	{
		"j-hui/fidget.nvim",
		tag = "v1.2.0",
		config = function()
			require("fidget").setup({})
		end,
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim",
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
}
