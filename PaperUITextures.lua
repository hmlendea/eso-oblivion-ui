local textureRedirects = { }
local mapMarkerRedirects = { }

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = addonTexture
end

function RegisterAddonMapMarker(esoTexture, addonMapMarkerName)
    mapMarkerRedirects[esoTexture] = addonMapMarkerName
end

RegisterAddonMapMarker("esoui/art/icons/poi/poi_ayleidruin_complete.dds", "ayleid_ruin")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_ayleidruin_incomplete.dds", "ayleid_ruin_unexplored")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_camp_complete", "camp")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_city_complete", "city")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_delve_complete", "delve")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_dwemerruin_complete", "dwemer_ruin")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_explorable_complete", "delve")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_keep_complete", "keep")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_mundus_complete", "mundus_stone")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_tower_complete", "keep")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_wayshrine_complete", "wayshrine")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_bank", "bank")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_caravan", "caravan")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_dock", "dock")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_fence", "outlaws_refuge")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_inn", "inn")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_magesguild", "mages_guild")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_museum", "museum")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_outfitter", "outfitter")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_respecaltar", "rededication_stone")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_shadowysupplier", "dark_brotherhood")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_stable", "stable")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_vendor", "merchant")
RegisterAddonMapMarker("esoui/art/tutorial/poi_ayleidruin_complete.dds", "ayleid_ruin")
RegisterAddonMapMarker("esoui/art/tutorial/poi_ayleidruin_incomplete.dds", "ayleid_ruin_unexplored")
RegisterAddonMapMarker("esoui/art/tutorial/poi_camp_complete", "camp")
RegisterAddonMapMarker("esoui/art/tutorial/poi_city_complete", "city")
RegisterAddonMapMarker("esoui/art/tutorial/poi_delve_complete", "delve")
RegisterAddonMapMarker("esoui/art/tutorial/poi_dwemerruin_complete", "dwemer_ruin")
RegisterAddonMapMarker("esoui/art/tutorial/poi_explorable_complete", "delve")
RegisterAddonMapMarker("esoui/art/tutorial/poi_keep_complete", "keep")
RegisterAddonMapMarker("esoui/art/tutorial/poi_mundus_complete", "mundus_stone")
RegisterAddonMapMarker("esoui/art/tutorial/poi_tower_complete", "keep")
RegisterAddonMapMarker("esoui/art/tutorial/poi_wayshrine_complete", "wayshrine")

function PaperUI:EnableAllTextures()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture .. ".dds", addonTexture .. ".dds")
    end

    for esoTexture, addonMapMarkerName in pairs(mapMarkerRedirects) do
        RedirectTexture(esoTexture .. ".dds", PaperUI.Directories.MapMarkers .. "/" .. string.gsub(PaperUI.SavedVariables.MapMarkersStyle, "%s+", "") .. "/" .. addonMapMarkerName .. ".dds")
    end
end

function PaperUI:DisableAllTextures()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, esoTexture)
    end

    for esoTexture, addonMapMarkerName in pairs(mapMarkerRedirects) do
        RedirectTexture(esoTexture, esoTexture)
    end
end
