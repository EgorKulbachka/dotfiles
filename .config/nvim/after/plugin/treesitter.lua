local ok, config = pcall(require, "nvim-treesitter.configs")

if not ok then
    return
end

config.setup {
    ensure_installed = {
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
