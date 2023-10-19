local ok, comment = pcall(require, "neorg")

if not ok then
    return
end

comment.setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.integrations.treesitter"] = {},
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        }, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
            workspaces = {
                notes = "~/notes",
                },
            },
        },
    },
}
