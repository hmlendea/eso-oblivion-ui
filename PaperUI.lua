PaperUI = {
    Name = "PaperUI",
    Author = "Hori873",
    Version = "1.0",
    SavedVariablesName = "PaperUI_SavedVariables",
    Directories = { },
    Options = {
        AvailableInterfaceStyles = {
            [1] = "Oblivion DarNified DarN"
        },
        AvailableMapMarkersStyles = {
            [1] = "Oblivion",
            [2] = "Oblivion Coloured"
            [3] = "Oblivion Borderless",
            [4] = "Elven Map Redux"
        },
        AvailableFonts = {
            [1] = "Kingthings_Exeter.ttf"
        },
        Defaults = { }
    }
}

PaperUI.Directories.Assets = PaperUI.Name .. "/assets"
PaperUI.Directories.Fonts = PaperUI.Directories.Assets .. "/fonts"
PaperUI.Directories.Interface = PaperUI.Directories.Assets .. "/interface"
PaperUI.Directories.MapMarkers = PaperUI.Directories.Assets .. "/mapmarkers"

PaperUI.Options.Defaults = {
    InterfaceStyle = PaperUI.Options.AvailableInterfaceStyles[1],
    MapMarkersStyle = PaperUI.Options.AvailableMapMarkersStyles[1],
    Font = PaperUI.Options.AvailableFonts[1]
}

function ChangeToPaperUI()
    PaperUI:EnableAllTextures()

    for key, value in zo_insecurePairs(_G) do
        if (key):find("^Zo") and type(value) == "userdata" and value.SetFont then
           local font = {value:GetFontInfo()}
           font[1] = PaperUI.Directories.Fonts .. "/" .. PaperUI.SavedVariables.Font
           value:SetFont(table.concat(font, "|"))
        end
     end
end

function ChangeToVanillaUI()
    PaperUI:DisableAllTextures()
end

function OnAddOnLoaded(event, addonName)
    if addonName ~= PaperUI.Name then
        return
    end

    PaperUI.SavedVariables = ZO_SavedVars:NewAccountWide(PaperUI.SavedVariablesName, PaperUI.Version, PaperUI.Options.Defaults, nil)
    PaperUI:RegisterTextures()

    ChangeToPaperUI()

    PaperUI:InitialiseAddonMenu()
end

EVENT_MANAGER:RegisterForEvent(PaperUI.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
