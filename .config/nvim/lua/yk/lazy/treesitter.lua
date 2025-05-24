return {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
        config = function()
            local config = require("nvim-treesitter.configs")

            config.setup {
                ensure_installed = {
                    "vimdoc",
                    "luadoc",
                    "vim",
                    "lua",
                    "markdown",
                    "typescript",
                    "javascript",
                    "yaml",
                    "json",
                    "hcl",
                    "terraform",
                    "css",
                    "html",
                    "gitignore",
                    "diff",
                    "dockerfile",
                    "bash",
                    "tsx",
                    "lua",
                    "svelte",
                    "rust",
                    "clojure",
                    "fennel",
                    "python",
                    "zig",
                },
                sync_install = true,
                auto_install = false,
                highlight = {
                    enable = true,

                    additional_vim_regex_highlighting = false,
                },
                textobjects = {
                    select = {
                        enable = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["ab"] = "@block.outer",
                            ["ib"] = "@block.inner",
                        },
                    },
                },
            }
        end,
    },
    {
        "stevearc/aerial.nvim",
        opts = {},
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "kyazdani42/nvim-web-devicons"
        },
        config = function()
            local aerial = require("aerial")
            aerial.setup({
                float = {
                    relative = "editor",
                    override = function(conf, source_winid)
                        conf["width"] = 10000
                        return conf
                    end,
                },
            })

            vim.keymap.set("n", "<leader>go", "<cmd>AerialToggle float<CR>")
        end
    },
}
