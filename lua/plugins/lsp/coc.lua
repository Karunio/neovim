return {
	"neoclide/coc.nvim",
	branch = "release",
	config = function()
		vim.g.coc_global_extensions = {
			"coc-snippets",
			"coc-pairs",
			"coc-json",
			"coc-tsserver",
			"coc-sumneko-lua",
		}

		-- Definitive, correct COC Keymappings for INSERT MODE
		
		-- Use Tab to confirm completion
		vim.keymap.set("i", "<TAB>", function()
			if vim.fn["coc#pum#visible"]() == 1 then
				return vim.fn["coc#pum#confirm"]()
			else
				return vim.api.nvim_replace_termcodes("<TAB>", true, true, true)
			end
		end, { expr = true, noremap = true })

		-- Use S-Tab to navigate up
		vim.keymap.set("i", "<S-TAB>", function()
			if vim.fn["coc#pum#visible"]() == 1 then
				return vim.fn["coc#pum#prev"](1)
			else
				return vim.api.nvim_replace_termcodes("<S-TAB>", true, true, true)
			end
		end, { expr = true, noremap = true })

		-- Use <CR> to also confirm completion
		vim.keymap.set("i", "<CR>", function()
			if vim.fn["coc#pum#visible"]() == 1 then
				return vim.fn["coc#pum#confirm"]()
			else
				-- If no completion, just insert a newline
				return vim.api.nvim_replace_termcodes("<CR>", true, false, true)
			end
		end, { expr = true, silent = true, noremap = true })
		
		-- Use <C-j> to jump to next snippet placeholder
		vim.keymap.set("i", "<C-j>", function()
			if vim.fn.exists("coc#snippet#next") == 1 then
				vim.fn["coc#snippet#next"]()
			end
		end, { silent = true })
	end
}
