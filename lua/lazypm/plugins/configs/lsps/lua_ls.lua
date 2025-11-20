tree_log("lua_ls")

return {
    settings = {
        Lua = {
             diagnostics = {
                 globals = { "tree_log", "lrequire" },
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
}
