PaperUI = {
    Name = "PaperUI",
    Author = "Hori873",
    Version = "1.0",
    SavedVariablesName = "PaperUI_SavedVariables"
}

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = PaperUI.Name .. "/" .. addonTexture
end

local textureRedirects = { }
RegisterAddonTexture("esoui/art/icons/poi_city_complete.dds", "assets/mapmarkers/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_delve_complete.dds", "assets/mapmarkers/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_explorable_complete.dds", "assets/mapmarkers/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_keep_complete.dds", "assets/mapmarkers/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_mundus_complete.dds", "assets/mapmarkers/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi_tower_complete.dds", "assets/mapmarkers/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_wayshrine_complete.dds", "assets/mapmarkers/poi_wayshrine_complete.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_bank.dds", "assets/mapmarkers/servicepin_bank.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_dock.dds", "assets/mapmarkers/servicepin_dock.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_fence.dds", "assets/mapmarkers/servicepin_fence.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_inn.dds", "assets/mapmarkers/servicepin_inn.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_museum.dds", "assets/mapmarkers/servicepin_museum.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_outfitter.dds", "assets/mapmarkers/servicepin_outfitter.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_stable.dds", "assets/mapmarkers/servicepin_stable.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_vendor.dds", "assets/mapmarkers/servicepin_vendor.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_city_complete.dds", "assets/mapmarkers/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_delve_complete.dds", "assets/mapmarkers/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_explorable_complete.dds", "assets/mapmarkers/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_keep_complete.dds", "assets/mapmarkers/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_mundus_complete.dds", "assets/mapmarkers/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_tower_complete.dds", "assets/mapmarkers/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi/poi_wayshrine_complete.dds", "assets/mapmarkers/poi_wayshrine_complete.dds")

function EnableTextures()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, addonTexture)
    end
end

function DisableTextures()
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
        DisableTextures()
    elseif PaperUI.SavedVariables.ActiveUI == PaperUI.Name then
        EnableTextures()
    end

    PaperUI:InitialiseAddonMenu()
end

EVENT_MANAGER:RegisterForEvent(PaperUI.Name, EVENT_ADD_ON_LOADED, OnAddOnLoaded)
