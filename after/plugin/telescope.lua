local telescope = require('telescope')
local builtin = require('telescope.builtin')
local project = telescope.extensions.project.project
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fp', function()
    -- Switch projects
    project({ display_type = 'full' })
end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local project_actions = require("telescope._extensions.project.actions")
telescope.setup {
    pickers = {
        find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        }
    },
    defaults = {
        file_ignore_patterns = {
            "node%_modules/.*"
        }
    },
    extensions = {
        project = {
            base_dirs = {
                '~',
            },
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            on_project_selected = function(prompt_bufnr)
                -- Do anything you want in here. For example:
                project_actions.change_working_directory(prompt_bufnr, false)
                vim.cmd.Ex(project_actions.get_selected_path(prompt_bufnr))
            end
        },
    },
}

telescope.load_extension('project')
