local reloadUiWarning = "You must reload the UI for the changes to take effect!"

local panelData = {
    type = "panel",
    name = PaperUI.Name,
    displayName = PaperUI.Name,
    author = "Hori873",
    registerForDefaults = true,
    version = PaperUI.Version,
    slashCommand = "/paperui"
}

local optionsData = {
	[1] = {
		type = "header",
        name = "General Options"
	},
	[2] = {
		type = "dropdown",
        name = "Interface Style",
        tooltip = "Choose the user interface style.",
        choices = PaperUI.Options.AvailableInterfaceStyles,
        default = PaperUI.Options.AvailableInterfaceStyles[1],
        warning = reloadUiWarning,
        getFunc = function() return PaperUI.SavedVariables.InterfaceStyle end,
        setFunc = function(val) PaperUI.SavedVariables.InterfaceStyle = val end
    },
	[3] = {
		type = "dropdown",
        name = "Map Markers",
        tooltip = "Choose the map markers style.",
        choices = PaperUI.Options.AvailableMapMarkersStyles,
        default = PaperUI.Options.AvailableMapMarkersStyles[1],
        warning = reloadUiWarning,
        getFunc = function() return PaperUI.SavedVariables.MapMarkersStyle end,
        setFunc = function(val) PaperUI.SavedVariables.MapMarkersStyle = val end
    },
	[4] = {
		type = "dropdown",
        name = "Font",
        tooltip = "Choose the font.",
        choices = PaperUI.Options.AvailableFonts,
        default = PaperUI.Options.AvailableFonts[1],
        warning = reloadUiWarning,
        getFunc = function() return PaperUI.SavedVariables.Font end,
        setFunc = function(val) PaperUI.SavedVariables.Font = val end
    },
    [5] = {
        type = "button",
		name = "Reload UI",
	    width = "full",
        func = function()
            ReloadUI("ingame")
        end
	}
}

function PaperUI:InitialiseAddonMenu()
    local LAM2 = LibStub('LibAddonMenu-2.0')

    if LAM2 == nil then
        return
    end

    LAM2:RegisterOptionControls("PaperUIOptions", optionsData)
    LAM2:RegisterAddonPanel("PaperUIOptions", panelData)
end
