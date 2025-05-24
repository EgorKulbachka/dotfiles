vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
      local telescope = require("telescope.builtin")
      vim.keymap.set("n", "gd", telescope.lsp_definitions, { buffer = 0 })
      vim.keymap.set("n", "gu", "<cmd>Trouble lsp_references focus=true auto_refresh=false<cr>", { buffer = 0 })
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
      vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { buffer = 0 })
      vim.keymap.set("n", "gq", vim.lsp.buf.format, { buffer = 0 })
      vim.keymap.set("v", "gq", vim.lsp.buf.format, { buffer = 0 })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
      vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = 0 })
      vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_next, { buffer = 0 })
      vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, { buffer = 0 })
  end,
})

vim.lsp.enable('ts_ls')
vim.lsp.enable('terraformls')
vim.lsp.enable('bashls')
vim.lsp.enable('cssls')
vim.lsp.enable('dockerls')
vim.lsp.enable('jsonls')
vim.lsp.enable('clojure_lsp')
vim.lsp.enable('clojure_lsp')
vim.lsp.enable('lua_ls')
vim.lsp.config('bashls', {
    filetypes = { 'bash', 'sh', 'zsh' },
})
