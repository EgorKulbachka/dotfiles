return require("packer").startup(function(use)

        -- Packer can manage itself
        use { "wbthomason/packer.nvim" }

        use { "catppuccin/nvim", as = "catppuccin" }

        use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
        use {
            "nvim-telescope/telescope.nvim", tag = "0.1.0",
            requires = { {"nvim-lua/plenary.nvim"} }
        }
        use { "debugloop/telescope-undo.nvim" }

        -- LSP
        use { "neovim/nvim-lspconfig" }
        use { "hrsh7th/nvim-cmp" }
        use { "hrsh7th/cmp-nvim-lsp" }
        use { "hrsh7th/cmp-buffer" }
        use { "hrsh7th/cmp-path" }
        use { "hrsh7th/cmp-cmdline" }
        use { "hrsh7th/cmp-nvim-lsp-signature-help" }
        use { "hrsh7th/cmp-nvim-lua" }
        use { "hrsh7th/cmp-emoji" }
        use { "dcampos/nvim-snippy" }
        use { "dcampos/cmp-snippy" }

        -- Treesitter
        use {
            "nvim-treesitter/nvim-treesitter",
            run = function()
                local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
                ts_update()
            end,
        }
        use { "nvim-treesitter/nvim-treesitter-textobjects" }

        -- Misc
        use { "tpope/vim-fugitive" }
        use { "lewis6991/gitsigns.nvim" }
        -- use { "elihunter173/dirbuf.nvim" }
        use { "stevearc/oil.nvim" }
        use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
        use { "folke/which-key.nvim" }
        use { "cwebster2/github-coauthors.nvim" }
        
        use { "machakann/vim-sandwich" }
        use { "numToStr/Comment.nvim" }
        use { "gpanders/editorconfig.nvim" }

        use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }
        use { "RRethy/vim-illuminate" }
        use { "kyazdani42/nvim-web-devicons" }

        -- org mode
        -- use { "nvim-orgmode/orgmode" }

        -- requires manual setup
        use { "iamcco/markdown-preview.nvim" }
    end
)
