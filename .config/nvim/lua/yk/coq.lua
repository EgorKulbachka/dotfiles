vim.g.coq_settings = {
    ["auto_start"] = true
}

local ok, coq = pcall(require, "coq")

if not ok then
    return
end

