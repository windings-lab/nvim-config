function _G.lrequire(modname, msg)
    if msg then
        tree_log(msg, 3)
    else
        tree_log("Initializing " .. modname .. " module", 3)
    end
    return require(modname)
end
