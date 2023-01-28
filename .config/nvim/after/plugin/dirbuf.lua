local ok, dirbuf = pcall(require, "dirbuf")

if not ok then
    return
end

dirbuf.setup {
    sort_order = "directories_first",
}
