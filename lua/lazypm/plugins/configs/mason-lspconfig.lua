tree_log("mason-lspconfig")

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "basedpyright", },
        automatic_enable = {
            exclude = { "lua_ls", "basedpyright" }
        },
    }
}
