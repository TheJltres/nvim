-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--         style = "night",
--         styles = {
--             keywords = { italic = false, },
--         }
--     },
--     init = function ()
--         vim.cmd.colorscheme("tokyonight")
--     end
-- }

return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = -1,
    opts = {
        commentStyle = { italic = false, },
        keywordStyle = { italic = false, },
        statementStyle = { bold = false, },
        terminalColors = false,
        colors = {
            theme = {
                all = {
                    ui = {
                        bg_gutter = "none",
                    },
                },
            },
        },
    },
    config = function(_, opts)
        require("kanagawa").setup(opts)

        vim.cmd.colorscheme("kanagawa");
    end
}
