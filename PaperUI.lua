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

local textureRedirects = { }

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = addonTexture
end

RegisterAddonTexture("esoui/art/icons/poi_city_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_delve_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_explorable_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_keep_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_mundus_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_tower_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_wayshrine_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_wayshrine_complete.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_bank.dds", PaperUI.Directories.MapMarkers .. "/servicepin_bank.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_caravan.dds", PaperUI.Directories.MapMarkers .. "/servicepin_caravan.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_dock.dds", PaperUI.Directories.MapMarkers .. "/servicepin_dock.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_fence.dds", PaperUI.Directories.MapMarkers .. "/servicepin_fence.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_inn.dds", PaperUI.Directories.MapMarkers .. "/servicepin_inn.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_magesguild.dds", PaperUI.Directories.MapMarkers .. "/servicepin_magesguild.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_museum.dds", PaperUI.Directories.MapMarkers .. "/servicepin_museum.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_outfitter.dds", PaperUI.Directories.MapMarkers .. "/servicepin_outfitter.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_respecaltar.dds", PaperUI.Directories.MapMarkers .. "/servicepin_respecaltar.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_stable.dds", PaperUI.Directories.MapMarkers .. "/servicepin_stable.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_vendor.dds", PaperUI.Directories.MapMarkers .. "/servicepin_vendor.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_city_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_delve_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_explorable_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_keep_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_mundus_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_tower_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi/poi_wayshrine_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_wayshrine_complete.dds")

function ChangeToPaperUI()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, addonTexture)
    end

    for key, value in zo_insecurePairs(_G) do
        if (key):find("^Zo") and type(value) == "userdata" and value.SetFont then
           local font = {value:GetFontInfo()}
           font[1] = PaperUI.Directories.Fonts .. "/Kingthings_Exeter.ttf"
           value:SetFont(table.concat(font, "|"))
        end
     end
end

function ChangeToVanillaUI()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, esoTexture)
    end
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
