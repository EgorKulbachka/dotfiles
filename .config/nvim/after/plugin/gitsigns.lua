local ok, gitsigns = pcall(require, "gitsigns")

if not ok then
    return
end

gitsigns.setup {
    numhl = true,

    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        map('n', '<leader>hR', gs.reset_buffer, { desc = 'Git reset buffer' })
        map('n', '<leader>hr', gs.reset_hunk, { desc = 'Git reset hunk' })
        map('n', '<leader>hp', gs.preview_hunk, { desc = 'Git preview hunk' })
        map('n', '<leader>hb', function() gs.blame_line { full = true } end, { desc = 'Git blame line' })
        map('n', '<leader>hd', gs.diffthis, { desc = 'Git diff' })

        -- Text object
        map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end
}
