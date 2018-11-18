OblivionUI = {
    Name = "OblivionUI",
    Author = "Hori873",
    Version = "1.0",
    Directories = { },
    Options = {
        AvailableInterfaceStyles = {
            [1] = "DarNified DarN"
        },
        AvailableMapMarkersStyles = {
            [1] = "Vanilla",
            [2] = "Coloured",
            [3] = "Borderless",
            [4] = "Elven Map Redux"
        },
        AvailableFonts = {
            [1] = "Kingthings_Exeter.ttf"
        },
        Defaults = { }
    }
}

OblivionUI.SavedVariablesName = OblivionUI.Name .. "_SavedVariables"

OblivionUI.Directories.Assets = OblivionUI.Name .. "/assets"
OblivionUI.Directories.Fonts = OblivionUI.Directories.Assets .. "/fonts"
OblivionUI.Directories.Interface = OblivionUI.Directories.Assets .. "/interface"
OblivionUI.Directories.MapMarkers = OblivionUI.Directories.Assets .. "/mapmarkers"

OblivionUI.Options.Defaults = {
    InterfaceStyle = OblivionUI.Options.AvailableInterfaceStyles[1],
    MapMarkersStyle = OblivionUI.Options.AvailableMapMarkersStyles[1],
    Font = OblivionUI.Options.AvailableFonts[1]
}

function EnableInterfaceStyling()
    OblivionUI:EnableAllTextures()

    for key, value in zo_insecurePairs(_G) do
        if (key):find("^Zo") and type(value) == "userdata" and value.SetFont then
           local font = {value:GetFontInfo()}
           font[1] = OblivionUI.Directories.Fonts .. "/" .. OblivionUI.SavedVariables.Font
           value:SetFont(table.concat(font, "|"))
        end
     end
end

function ChangeToVanillaUI()
    OblivionUI:DisableAllTextures()
end

function OnAddOnLoaded(event, addonName)
    if addonName ~= OblivionUI.Name then
        return
    end

    OblivionUI.SavedVariables = ZO_SavedVars:NewAccountWide(OblivionUI.SavedVariablesName, OblivionUI.Version, OblivionUI.Options.Defaults, nil)
    OblivionUI:RegisterTextures()

    EnableInterfaceStyling()

    OblivionUI:InitialiseAddonMenu()
end

EVENT_MANAGER:RegisterForEvent(OblivionUI.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
