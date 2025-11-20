tree_log("nvim-dap")

return {
    {
        "rcarriga/nvim-dap-ui",
        opts = {},
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    },
    {
        "mfussenegger/nvim-dap-python",
        dependencies = { "mfussenegger/nvim-dap", },
        config = function()
            require("dap-python").setup("python")
            local dap, dapui = require("dap"), require("dapui")
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
        end,
    },
}
