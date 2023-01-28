local ok, bufferline = pcall(require, "bufferline")

if not ok then
    return
end

bufferline.setup {
    options = {
        numbers = "buffer_id",
        diagnostics = "nvim_lsp",
        show_tab_indicators = true,
    },
}
