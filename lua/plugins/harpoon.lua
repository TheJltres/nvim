return {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require("harpoon").setup()

		-- TODO: Add key bindings
	end
}
