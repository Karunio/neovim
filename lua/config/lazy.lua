local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ "catppuccin/nvim", name = "catppuccin" },
		{ import = "plugins" },
	},
	install = { colorscheme = { "catppuccin-frappe" } },
	defaults = {
		lazy = false,
	},
	checker = { enabled = true },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin",
			},
		},
	},
})

vim.cmd.colorscheme("catppuccin-frappe")
