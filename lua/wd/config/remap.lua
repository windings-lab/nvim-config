tree_log("<leader>: \"\\\"")
vim.g.mapleader = "\\"

tree_log("netrw(File manager): <leader>fm")
vim.keymap.set("n", "<leader>fm", function()
    local bufname = vim.api.nvim_buf_get_name(0)
    if bufname ~= "" then
        vim.cmd("write")
    end
    vim.cmd("Ex")
end, { desc = "netrw(File manager)" })

tree_log("Open packet manager: <leader>pm")
vim.keymap.set("n", "<leader>pm", function()
    vim.cmd("Lazy")
end, { desc = "Open packet manager" })

tree_log("Open packet manager: <leader>oc")
vim.keymap.set("n", "<leader>oc", function()
    vim.cmd("update")
    vim.cmd("bd")
    vim.cmd("Ex ~/.config/nvim/")
end, { desc = "Browse Neovim config" })
