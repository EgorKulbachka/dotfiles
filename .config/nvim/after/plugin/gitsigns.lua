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

        map('n', '<leader>hR', gs.reset_buffer)
        map('n', '<leader>hr', gs.reset_hunk)
        map('n', '<leader>hp', gs.preview_hunk)
        map('n', '<leader>hb', function() gs.blame_line { full = true } end)
        map('n', '<leader>hd', gs.diffthis)

        -- Text object
        map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end
}
