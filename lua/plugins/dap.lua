return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-neotest/nvim-nio",
        "folke/neodev.nvim",
    },
    config = function ()
        local dap = require("dap")
        local dapui = require("dapui")
        require("nvim-dap-virtual-text").setup()

        vim.keymap.set("n", "<space>b", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<F5>", dap.continue, {})
        vim.keymap.set("n", "<F11>", dap.step_over, {})

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end
}
