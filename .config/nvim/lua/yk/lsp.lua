local ok, lspconfig = pcall(require, "lspconfig")

if not ok then
    return
end

-- local coq = require("coq")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = false
local telescope = require("telescope.builtin")

local function config(_extended) 
    return vim.tbl_deep_extend(
        "force", 
        {
            capabilities = capabilities,
            on_attach = function()
                vim.keymap.set("n", "gd", telescope.lsp_definitions, { buffer = 0 })
                vim.keymap.set("n", "gu", "<cmd>Trouble lsp_references<cr>", { buffer = 0 })
                vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
                vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { buffer = 0 })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
                vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = 0 })
                vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_next, { buffer = 0 })
                vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, { buffer = 0 })
            end,
        },
        _extended or {}
    )
end

lspconfig.tsserver.setup(config())
lspconfig.terraformls.setup(config())
lspconfig.tailwindcss.setup(config { 
    filetypes = { "html", "css", "svelte" }
})
lspconfig.svelte.setup(config())
lspconfig.bashls.setup(config())
lspconfig.cssls.setup(config())
lspconfig.dockerls.setup(config())
lspconfig.rust_analyzer.setup(config())
lspconfig.html.setup(config())

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- lspconfig.html.setup(config {
--     capabilities = capabilities,
-- })

