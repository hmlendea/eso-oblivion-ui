PaperUI = {
    Name = "PaperUI",
    Author = "Hori873",
    Version = "1.0",
    SavedVariablesName = "PaperUI_SavedVariables",
    Directories = {
        Assets = PaperUI.Name .. "/assets",
        Fonts = PaperUI.Directories.Assets .. "/fonts",
        MapMarkers = PaperUI.Directories.Assets .. "/mapmarkers/" .. PaperUI.SavedVariables.MapMarkersStyle
    },
    Options = {
        InterfaceStyles = {
            [1] = PaperUI.Name,
            [2] = "Vanilla"
        },
        MapMarkersStyles = {
            [1] = "Oblivion"
        }
        Fonts = {
            [1] = "Kingthings_Exeter.ttf"
        },
        Defaults = {
            InterfaceStyle = PaperUI.Options.InterfaceStyles[1],
            MapMarkersStyle = PaperUI.Options.MapMarkersStyles[1],
            Font = PaperUI.Options.Fonts[1]
        }
    }
}

function ChangeToPaperUI()
    PaperUITextures:EnableAll()

    for key, value in zo_insecurePairs(_G) do
        if (key):find("^Zo") and type(value) == "userdata" and value.SetFont then
           local font = {value:GetFontInfo()}
           font[1] = PaperUI.Directories.Fonts .. "/" .. PaperUI.SavedVariables.Font
           value:SetFont(table.concat(font, "|"))
        end
     end
end

function ChangeToVanillaUI()
    PaperUITextures:DisableAll()
end

function OnAddOnLoaded(event, addonName)
    if addonName ~= PaperUI.Name then
        return
    end

    PaperUI.SavedVariables = ZO_SavedVars:NewAccountWide(PaperUI.SavedVariablesName, ADDON_VERSION, PaperUI.Options.Defaults, nil)

    if PaperUI.SavedVariables.InterfaceStyle == PaperUI.Options.InterfaceStyles[1] then
        ChangeToPaperUI()
    elseif PaperUI.SavedVariables.InterfaceStyle == PaperUI.Options.InterfaceStyles[2] then
        ChangeToVanillaUI()
    end

    PaperUI:InitialiseAddonMenu()
end

EVENT_MANAGER:RegisterForEvent(PaperUI.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
