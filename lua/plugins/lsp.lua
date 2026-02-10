return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
	version = "1.*",
    opts = {
      keymap = { preset = 'super-tab' },

      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = { documentation = { auto_show = true } },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" },

      cmdline = {
        enabled = true,

        keymap = { preset = "cmdline", },

        completion = {
          list = { selection = { preselect = false } },
          menu = {
            auto_show = function(ctx)
              return vim.fn.getcmdtype() == ":"
            end,
          },
        },

      },

    },

    opts_extend = { "sources.default" }
  }
}
