local reloadUiWarning = "You must reload the UI for the changes to take effect!"

local panelData = {
    type = "panel",
    name = OblivionUI.Name,
    displayName = OblivionUI.Name,
    author = "Hori873",
    registerForDefaults = true,
    version = OblivionUI.Version,
    slashCommand = "/oblivionui"
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
        choices = OblivionUI.Options.AvailableInterfaceStyles,
        default = OblivionUI.Options.AvailableInterfaceStyles[1],
        warning = reloadUiWarning,
        getFunc = function() return OblivionUI.SavedVariables.InterfaceStyle end,
        setFunc = function(val) OblivionUI.SavedVariables.InterfaceStyle = val end
    },
	[3] = {
		type = "dropdown",
        name = "Map Markers",
        tooltip = "Choose the map markers style.",
        choices = OblivionUI.Options.AvailableMapMarkersStyles,
        default = OblivionUI.Options.AvailableMapMarkersStyles[1],
        warning = reloadUiWarning,
        getFunc = function() return OblivionUI.SavedVariables.MapMarkersStyle end,
        setFunc = function(val) OblivionUI.SavedVariables.MapMarkersStyle = val end
    },
	[4] = {
		type = "dropdown",
        name = "Font",
        tooltip = "Choose the font.",
        choices = OblivionUI.Options.AvailableFonts,
        default = OblivionUI.Options.AvailableFonts[1],
        warning = reloadUiWarning,
        getFunc = function() return OblivionUI.SavedVariables.Font end,
        setFunc = function(val) OblivionUI.SavedVariables.Font = val end
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

function OblivionUI:InitialiseAddonMenu()
    local LAM2 = LibStub('LibAddonMenu-2.0')

    if LAM2 == nil then
        return
    end

    LAM2:RegisterOptionControls("OblivionUIOptions", optionsData)
    LAM2:RegisterAddonPanel("OblivionUIOptions", panelData)
end
