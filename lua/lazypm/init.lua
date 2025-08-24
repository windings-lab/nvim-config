lrequire("lazypm.install", "Installing...")
lrequire("lazy", "Importing plugins...").setup(
{
  spec = 
  {
    -- import your plugins
    { import = "lazypm.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
