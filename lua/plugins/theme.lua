return {
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- require('nordic').load({
            --     -- swap_backgrounds = true,
            -- })
        end
    },
    {
        'dracula/vim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme('dracula')
        end
    }
}
