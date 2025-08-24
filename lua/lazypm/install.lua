local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    tree_log("Downloading and initializing packet manager")
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo(
        {
            { "failed to clone lazy.nvim:\n", "errormsg" },
            { out, "warningmsg" },
            { "\npress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
else
    tree_log("Repository already downloaded")
end

tree_log("Adding packet manager to module search path")
vim.opt.rtp:prepend(lazypath)
