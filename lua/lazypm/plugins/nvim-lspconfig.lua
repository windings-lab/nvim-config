tree_log("nvim-lspconfig")

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        require("lazypm.plugins.configs.mason"),
        require("lazypm.plugins.configs.mason-lspconfig"),
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup(require("lazypm.plugins.configs.lsps.lua_ls"))
        lspconfig.basedpyright.setup(require("lazypm.plugins.configs.lsps.basedpyright"))
    end,
}
