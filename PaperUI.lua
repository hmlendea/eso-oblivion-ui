PaperUI = {
    Name = "PaperUI",
    Author = "Hori873",
    Version = "1.0",
    SavedVariablesName = "PaperUI_SavedVariables",
    Directories = {
        Assets = PaperUI.Name .. "/assets",
        Fonts = PaperUI.Directories.Assets .. "/fonts",
        MapMarkers = PaperUI.Directories.Assets .. "/mapmarkers"
    }
}

function ChangeToPaperUI()
    PaperUITextures:EnableAll()

    for key, value in zo_insecurePairs(_G) do
        if (key):find("^Zo") and type(value) == "userdata" and value.SetFont then
           local font = {value:GetFontInfo()}
           font[1] = PaperUI.Directories.Fonts .. "/Kingthings_Exeter.ttf"
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

    local defaults = {
        ActiveUI = PaperUI.Name
    }

    PaperUI.SavedVariables = ZO_SavedVars:NewAccountWide(PaperUI.SavedVariablesName, ADDON_VERSION, defaults, nil)

    if PaperUI.SavedVariables.ActiveUI == "Vanilla" then
        ChangeToVanillaUI()
    elseif PaperUI.SavedVariables.ActiveUI == PaperUI.Name then
        ChangeToPaperUI()
    end

    PaperUI:InitialiseAddonMenu()
end

EVENT_MANAGER:RegisterForEvent(PaperUI.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
