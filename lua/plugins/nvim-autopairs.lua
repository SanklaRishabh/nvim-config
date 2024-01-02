return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		-- Import nvim-autopairs
		local autopairs = require("nvim-autopairs")

		-- Configure autopairs
		autopairs.setup({
			check_ts = true, -- Enable treesitter
			ts_config = {
				lua = { "string" }, -- Don't add pair in Lua string treesitter nodes.
				javascript = { "template_string" }, -- Don't add pairs in JavaScript template_string treesitter nodes.
				java = false, -- Don't check treesitter on Java.
			},
		})

		-- Import nvim-autopairs completion functionality
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- Import nvim-cmp plugin (completions plugin).
		local cmp = require("cmp")

		-- Make autopairs and completion work together
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
