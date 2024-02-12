return {
	"nvimtools/none-ls.nvim",
	dependencies = { "davidmh/cspell.nvim" },
	config = function()
		local null_ls = require("null-ls")
		local cspell = require("cspell")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.diagnostics.cspell,
				null_ls.builtins.completion.spell,
				cspell.code_actions,
			},
		})

		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format file with none-ls" })
	end,
}
