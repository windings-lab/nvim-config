tree_log("Initializing clipboard to be OS global")
vim.api.nvim_create_autocmd("UIEnter",
{
    callback = function()
        vim.opt.clipboard = "unnamedplus"
    end,
})

tree_log("Intendation is 4 spaces")
vim.opt.expandtab = true   -- use spaces, not tabs
vim.opt.shiftwidth = 4     -- number of spaces when indenting
vim.opt.tabstop = 4        -- number of spaces a <Tab> counts for
vim.opt.softtabstop = 4    -- spaces when pressing <Tab>
