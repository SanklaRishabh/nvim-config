return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- Import `mason`.
		local mason = require("mason")

		-- Import `mason-lspconfig`.
		local mason_lspconfig = require("mason-lspconfig")

		-- Enable `mason` and configure icons.
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			-- List of servers for `mason` to install.
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"emmet_ls",
				"pyright",
			},
			-- Auto-install configured servers (with `lspconfig`).
			automatic_installation = true, -- Not the same as `ensure_installed`.
		})
	end,
}
