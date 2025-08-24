local plugins = {}

local function add_plugin(val)
    tree_log(val[1])
    plugins[#plugins + 1] = val
end

add_plugin({
    "neovim/nvim-lspconfig",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        { "mason-org/mason-lspconfig.nvim", opts = {
                ensure_installed = { "lua_ls", "basedpyright", },
                automatic_enable = {
                    exclude = { "lua_ls" }
                },
            },
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                     diagnostics = {
                         globals = { "tree_log", "lrequire" }, -- no need for "vim" anymore
                     },
                     workspace = {
                         library = vim.api.nvim_get_runtime_file("", true), -- add Neovim runtime
                         checkThirdParty = false, -- avoids "love2d" suggestions
                     },
                     completion = {
                         callSnippet = "Replace",
                     },
                     telemetry = {
                         enable = false,
                     },
                },
            },
        })
    end,
})

add_plugin({
    "folke/lazydev.nvim",
    opts = {
        library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            "nvim-dap-ui"
        },
    },
})

add_plugin({
    'saghen/blink.cmp',

    version = '1.*',

    opts = {
        keymap = { preset = 'default' },

        completion = { documentation = { auto_show = true } },

        sources = {
            default = { 'lsp', 'path', 'buffer' },
        },
    },
    opts_extend = { "sources.default" }
})

add_plugin({
    "rcarriga/nvim-dap-ui",
    opts = {},
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
})

add_plugin({ "nvim-tree/nvim-web-devicons", opts = {} })

return plugins
