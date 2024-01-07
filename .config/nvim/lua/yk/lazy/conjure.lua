return {
    -- { "Olical/conjure" },
    { 
        dir = "~/Projects/conjure",
        init = function() 
            vim.g["conjure#log#botright"] = true
            vim.g["conjure#log#wrap"] = true
            vim.g["conjure#client#clojure#nrepl#tap#enabled"] = true
            vim.g["conjure#client#clojure#nrepl#tap#queue_size"] = 5
        end,
        config = function()
            vim.api.nvim_create_autocmd("BufNewFile", {
                group = vim.api.nvim_create_augroup("conjure_log_disable_lsp", { clear = true }),
                pattern = { "conjure-log-*" },
                callback = function() vim.diagnostic.disable(0) end,
                desc = "Conjure Log disable LSP diagnostics",
            })
        end,
    },
}
