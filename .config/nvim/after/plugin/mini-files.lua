local ok, files = pcall(require, "mini.files")

if not ok then
    return
end

files.setup {
}

vim.keymap.set("n", "-", function() MiniFiles.open() end, {})

