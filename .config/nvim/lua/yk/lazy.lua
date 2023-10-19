require("lazy").setup({
        { "catppuccin/nvim", name = "catppuccin" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        {
            "nvim-telescope/telescope.nvim", version = "0.1.1",
            dependencies = { "nvim-lua/plenary.nvim" } 
        },
        { "debugloop/telescope-undo.nvim" },

        -- LSP
        { "neovim/nvim-lspconfig" },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/cmp-nvim-lsp-signature-help" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-emoji" },
        { "dcampos/nvim-snippy" },
        { "dcampos/cmp-snippy" },

        -- Treesitter
        {
            "nvim-treesitter/nvim-treesitter",
            build = function()
                local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
                ts_update()
            end,
        },
        { "nvim-treesitter/nvim-treesitter-textobjects" },

        -- Misc
        { "tpope/vim-fugitive" },
        { "lewis6991/gitsigns.nvim" },
        -- { "stevearc/oil.nvim" },
        { "folke/trouble.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
        { "folke/which-key.nvim" },
        { 'echasnovski/mini.files', version = false },
        -- { "cwebster2/github-coauthors.nvim" },
        
        { "machakann/vim-sandwich" },
        { "numToStr/Comment.nvim" },
        { "gpanders/editorconfig.nvim" },

        { "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons", lazy = true } },
        { "RRethy/vim-illuminate" },
        { "kyazdani42/nvim-web-devicons" },

        -- org mode
        -- use { "nvim-orgmode/orgmode" }
        -- { "nvim-neorg/neorg", build = ":Neorg sync-parsers", dependencies = { "nvim-lua/plenary.nvim" }, run = ":Neorg sync-parsers" },

        -- requires manual setup
        { "iamcco/markdown-preview.nvim" },
    }
)
