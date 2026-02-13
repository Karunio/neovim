local signs = {
	error = " ",
	warn = " ",
	hint = "󰌵 ",
	info = " ",
}

local signConf = {
	text = {},
	texthl = {},
	numhl = {},
}

for type, icon in pairs(signs) do
	local severityName = string.upper(type)
	local severity = vim.diagnostic.severity[severityName]
	local hl = "DiagnosticSign" .. type
	signConf.text[severity] = icon
	signConf.texthl[severity] = hl
	signConf.numhl[severity] = hl
end

vim.diagnostic.config({
	signs = signConf,
	virtual_text = true,
})

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			globalstatus = true,
		},
	},
}
