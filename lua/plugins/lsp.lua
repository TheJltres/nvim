return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neodev.nvim",
		"j-hui/fidget.nvim",
	},
	config = function()
		require("lspconfig")

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(_, bufnr)
				local opts = { buffer = bufnr, noremap = true, silent = true }
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
				vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', '<C-h>', vim.lsp.buf.signature_help, opts)
				vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, opts)
				vim.keymap.set('n', '<leader>ga', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
				vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
				vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
				vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
				vim.keymap.set('n', '<C-j>', '<CMD>lnext<CR>', opts)
				vim.keymap.set('n', '<C-k>', '<CMD>lprev<CR>', opts)
				vim.keymap.set('n', '<leader>j', '<CMD>cnext<CR>', opts)
				vim.keymap.set('n', '<leader>k', '<CMD>cprev<CR>', opts)
			end
		})
	end
}
