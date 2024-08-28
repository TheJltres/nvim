return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "night",
        styles = {
            keywords = { italic = false, },
        }
    },
    init = function ()
        vim.cmd.colorscheme("tokyonight")
    end
}
