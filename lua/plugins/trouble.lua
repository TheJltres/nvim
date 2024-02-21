return {
    "folke/trouble.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        icons = false,
    },
    config = function()
        local trouble = require('trouble')
        vim.keymap.set("n", "<leader>tt", function() trouble.toggle("workspace_diagnostics") end)
        vim.keymap.set("n", "gr", function() trouble.toggle("lsp_references") end)
    end
}
