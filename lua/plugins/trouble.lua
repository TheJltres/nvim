return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    opts = {
        icons = false,
    },
    config = function ()
        vim.keymap.set("n", "<leader>tt", function() require("trouble").toggle() end)
    end
}
