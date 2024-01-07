local projectsDir = '~/Projects'
local idea = '~/.bin/idea'

function launch(appName)
    return function()
        hs.application.launchOrFocus(appName)
    end
end

function openProject()
    local chooser = hs.chooser.new(function(choice)
        if choice then
            hs.execute(idea .. " " .. projectsDir .. "/" .. choice.text)
        end
    end)
    chooser:choices(function()
        local options = {}
        for file in hs.fs.dir(projectsDir) do
            local mode = hs.fs.attributes(projectsDir .. "/" .. file, "mode")
            if mode == "directory" and file ~= "." and file ~= ".." then
                table.insert(options, { ["text"] = file })
            end
        end
        return options
    end)
    chooser:show()
end

hs.hotkey.bind({"control", "option", "shift"}, ";", openProject)
hs.hotkey.bind({"control", "option", "shift"}, "c", launch("Google Chrome"))
hs.hotkey.bind({"control", "option", "shift"}, "s", launch("Slack"))
hs.hotkey.bind({"control", "option", "shift"}, "d", launch("Threads"))
hs.hotkey.bind({"control", "option", "shift"}, "l", launch("Linear"))
hs.hotkey.bind({"control", "option", "shift"}, "n", launch("Notion"))
hs.hotkey.bind({"control", "option", "shift"}, "b", launch("Firefox"))
hs.hotkey.bind({"control", "option", "shift"}, "t", launch("iTerm"))
hs.hotkey.bind({"control", "option", "shift"}, "f", launch("Finder"))
hs.hotkey.bind({"control", "option", "shift"}, "a", launch("Launchpad"))

hs.hotkey.bind({"control", "option", "shift"}, "m", function() hs.grid.maximizeWindow() end)
hs.hotkey.bind({"control", "option", "shift"}, "p", function() 
    local result, success = hs.execute("~/.bin/pritunl-stop", true)
    if success then
        hs.alert.show("Pritunl stopped", {atScreenEdge = 2, textSize = 20, radius = 2})
    else 
        hs.alert.show("Failed to execute: " .. result)
    end
end)

hs.hotkey.bind({"control", "option", "shift"}, "u", function()
    local newUuid = hs.host.uuid()
    hs.eventtap.keyStrokes(newUuid:lower())
end)

