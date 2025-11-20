vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        -- buffer-local keymaps
        local opts = { buffer = bufnr, silent = true }

        if client == nil then
            return
        end

        -- Only run for Lua language server
        if client.name == "lua_ls" then
        end

        if client.name == "basedpyright" then
        end
    end,
})
