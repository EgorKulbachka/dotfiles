local function config(_extended) 
    local telescope = require("telescope.builtin")
    return vim.tbl_deep_extend(
        "force", 
        {
            capabilities = capabilities,
            on_attach = function()
                vim.keymap.set("n", "gd", telescope.lsp_definitions, { buffer = 0 })
                vim.keymap.set("n", "gu", "<cmd>Trouble lsp_references<cr>", { buffer = 0 })
                vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
                vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { buffer = 0 })
                vim.keymap.set("n", "gq", vim.lsp.buf.format, { buffer = 0 })
                vim.keymap.set("v", "gq", vim.lsp.buf.format, { buffer = 0 })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
                vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = 0 })
                vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_next, { buffer = 0 })
                vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, { buffer = 0 })
            end,
        },
        _extended or {}
    )
end

return {
    {
     
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = false
            local lspconfig = require("lspconfig")

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
            lspconfig.jsonls.setup(config())
            lspconfig.clojure_lsp.setup(config())
        end,
    },
    {
        "folke/trouble.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("trouble").setup({})

            vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", {silent = true, noremap = true})
        end,
    },
}
