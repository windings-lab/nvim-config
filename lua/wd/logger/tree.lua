function _G.tree_log(msg, caller_offset)
    local root = vim.fn.stdpath("config")
    local indent = "  "

    local function depth(file)
        local rel = file:sub(#root + 3)
        local parts = vim.split(rel, "/")
        local result = #parts - 2
        if parts[#parts] ~= "init.lua" then
            result = result + 1
        end
        if result < 0 then result = 0 end  -- prevent negative indent
        return result
    end

    local file = debug.getinfo(caller_offset or 2, "S").source
    if file == "" then
        file = root
    end
    local level = depth(file)

    print(string.rep(indent, level) .. msg)
end
