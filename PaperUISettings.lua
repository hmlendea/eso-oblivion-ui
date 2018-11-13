local uiModes = {
    [1] = "Vanilla",
    [2] = PaperUI.Name,
}

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
        choices = uiModes,
        default = PaperUI.Name,
        warning = "You must reload the UI twice for all the textures to change over properly!",
        getFunc = function() return PaperUI.SavedVariables.ActiveUI end,
        setFunc = function(val) PaperUI.SavedVariables.ActiveUI = val end
    },
    [3] = {
        type = "button",
		name = "Reload UI",
		tooltip = "REMEMBER TO RELOAD THE UI TWICE",
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
