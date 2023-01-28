local ok, whichKey = pcall(require, "which-key")

if not ok then
    return
end

whichKey.setup {}
