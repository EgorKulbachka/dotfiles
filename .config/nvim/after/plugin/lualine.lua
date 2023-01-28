local ok, lualine = pcall(require, "lualine")

if not ok then
    return
end

lualine.setup {
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch"},
        -- lualine_b = {"branch", "diff", "filename"},
        lualine_c = {
            {
            "buffers",
            show_filename_only = true,   -- Shows shortened relative path when set to false.
            hide_filename_extension = false,   -- Hide filename extension when set to true.
            show_modified_status = true, -- Shows indicator when the buffer is modified.

            mode = 0, -- 0: Shows buffer name

            max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
            -- it can also be a function that returns
            -- the value of `max_length` dynamically.

            symbols = {
                modified = ' ●',      -- Text to show when the buffer is modified
                alternate_file = '#', -- Text to show to identify the alternate file
                directory =  '',     -- Text to show when the buffer is a directory
            },
            },
        },
        lualine_x = {"encoding", "fileformat", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    },
}
