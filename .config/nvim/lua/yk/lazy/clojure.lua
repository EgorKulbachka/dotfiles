return {
     {
         "Olical/conjure",
         init = function()
             vim.g["conjure#mapping#doc_word"] = false
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

             vim.keymap.set(
                 "n",
                 "<localleader>eR",
                 "<cmd>ConjureEvalRootForm<cr><cmd>ConjureEval (dev/refresh)<cr>"
             )
         end,
     },
    {
        "julienvincent/nvim-paredit",
        config = function()
            local paredit = require("nvim-paredit")
            paredit.setup()
        end,
    },
    -- { 
    --     dir = "~/Projects/conjure",
    --     init = function() 
    --         vim.g["conjure#log#botright"] = true
    --         vim.g["conjure#log#wrap"] = true
    --         vim.g["conjure#client#clojure#nrepl#tap#enabled"] = true
    --         vim.g["conjure#client#clojure#nrepl#tap#queue_size"] = 5
    --     end,
    --     config = function()
    --         vim.api.nvim_create_autocmd("BufNewFile", {
    --             group = vim.api.nvim_create_augroup("conjure_log_disable_lsp", { clear = true }),
    --             pattern = { "conjure-log-*" },
    --             callback = function() vim.diagnostic.disable(0) end,
    --             desc = "Conjure Log disable LSP diagnostics",
    --         })
    --
    --         vim.keymap.set(
    --             "n",
    --             "<localleader>eR",
    --             "<cmd>ConjureEvalRootForm<cr><cmd>ConjureEval (dev/refresh)<cr>"
    --         )
    --     end,
    -- },
}
