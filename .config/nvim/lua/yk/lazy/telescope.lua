return {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "debugloop/telescope-undo.nvim" },
    {
        "nvim-telescope/telescope.nvim", version = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzf-native.nvim",
            "debugloop/telescope-undo.nvim",
        },
        config = function()
            local builtin = require('telescope.builtin')
            local telescope = require('telescope')

            vim.keymap.set("n", "<leader>ff", function() builtin.find_files{path_display = { "truncate" }} end, {})
            vim.keymap.set("n", "<leader>fr", builtin.resume, {})
            vim.keymap.set("n", "<leader>fh", function() builtin.find_files{hidden = true, path_display = { "truncate" }} end, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
            vim.keymap.set("n", "<leader>ia", function() telescope.extensions.githubcoauthors.coauthors() end, {})

            telescope.load_extension("fzf")
            telescope.load_extension("undo")
        end,
    },
}
