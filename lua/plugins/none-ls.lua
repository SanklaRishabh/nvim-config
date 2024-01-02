return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
                -- For Lua.
				null_ls.builtins.formatting.stylua,
                -- For C, C++.
				null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "-style=\'{IndentWidth: 4}\'" }
                }),
				null_ls.builtins.diagnostics.clang_check,
                -- For Python.
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                -- Common for all.
				null_ls.builtins.completion.spell,
				null_ls.builtins.hover.dictionary,
				null_ls.builtins.hover.printenv,
			},
		})

		vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, {})
	end,
}
