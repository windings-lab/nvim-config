lrequire("lazypm.install", "Installing...")
lrequire("lazy", "Importing plugins...").setup({
    spec =
    {
        { import = "lazypm.plugins" },
    },
    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
