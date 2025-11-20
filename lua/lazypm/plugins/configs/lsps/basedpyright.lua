tree_log("basedpyright")

return {
    root_dir = function(fname)
        local lspconfig = require("lspconfig")
        return lspconfig.util.root_pattern(".venv", "pyproject.toml")(fname) or vim.fn.getcwd()
    end
}
