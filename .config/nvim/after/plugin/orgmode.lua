local ok, orgmode = pcall(require, "orgmode")

if not ok then
    return
end

orgmode.setup {
    org_agenda_files = {'~/Documents/org/*'},
    org_default_notes_file = '~/Documents/org/index.org',
}
orgmode.setup_ts_grammar()
