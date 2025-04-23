return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        "nvim-neotest/nvim-nio",
        "mfussenegger/nvim-dap-python"
    },
    config = function()
        local dap = require("dap")
        local ui = require("dapui")
        require("dapui").setup({
            layouts = { {
                elements = { {
                    id = "breakpoints",
                    size = 0.25
                }, {
                    id = "stacks",
                    size = 0.25
                }, {
                    id = "watches",
                    size = 0.25
                }, {
                    id = "scopes",
                    size = 0.25
                } },
                position = "left",
                size = 40
            }, {
                elements = { {
                    id = "repl",
                    size = 0.5
                }, {
                    id = "console",
                    size = 0.5
                } },
                position = "bottom",
                size = 10
            } }
        })
        require("nvim-dap-virtual-text").setup()
        require("dap-python").setup("python3")
        table.insert(require('dap').configurations.python, {
            type = 'python',
            request = 'launch',
            name = 'My Django configuration',
            program = '${workspaceFolder}/manage.py',
            args = { 'runserver' },
            django = true,
            exitAfterTaskReturns = false,
        })
        -- local python_ls_debugger = vim.fn.exepath "debugpy"
        -- if python_ls_debugger ~= "" then
        --     dap.adapters.python = {
        --         type = "executable",
        --         command = "/usr/bin/python",
        --         args = { "-m", "debugpy.adapter" },
        --     }
        --
        --     dap.configurations.python = {
        --         {
        --             type = "python",
        --             name = "Django server",
        --             request = "launch",
        --             program = "${workspaceFolder}/manage.py",
        --             args = { "runserver", "--noreload" },
        --             django = true,
        --             exitAfterTaskReturns = false,
        --             debugAutoInterpretAllModules = false,
        --         },
        --     }
        -- end
        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
        vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

        -- Eval var under cursor
        vim.keymap.set("n", "<leader>wh", function()
            require("dapui").eval(nil, { enter = true })
        end)
        vim.keymap.set("n", "<F6>", require("dapui").toggle)

        vim.keymap.set("n", "<F1>", dap.continue)
        vim.keymap.set("n", "<F2>", dap.step_into)
        vim.keymap.set("n", "<F3>", dap.step_over)
        vim.keymap.set("n", "<F4>", dap.step_out)
        vim.keymap.set("n", "<F5>", dap.step_back)
        vim.keymap.set("n", "<F13>", dap.restart)

        dap.listeners.before.attach.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            ui.open()
        end
        -- dap.listeners.before.event_terminated.dapui_config = function()
        --     ui.close()
        -- end
        -- dap.listeners.before.event_exited.dapui_config = function()
        --     ui.close()
        -- end
    end,
}
