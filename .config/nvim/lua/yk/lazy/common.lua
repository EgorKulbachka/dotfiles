return {
    { "kyazdani42/nvim-web-devicons" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end
    },

    {
        "stevearc/oil.nvim",
        config = function()
            local oil = require("oil")
            oil.setup({})

            vim.keymap.set("n", "-", oil.open, {})
        end
    },
    { "folke/which-key.nvim" },
    {
        "machakann/vim-sandwich",
        config = function()
            vim.cmd("runtime macros/sandwich/keymap/surround.vim")
        end
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            local comment = require("Comment")
            comment.setup({})
        end
    },
    { "gpanders/editorconfig.nvim" },
    {
        "RRethy/vim-illuminate",
        config = function()
            vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
            vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
            vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
        end
    },

    -- requires manual setup
    { "iamcco/markdown-preview.nvim" },
}
