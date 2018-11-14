local textureRedirects = { }
local mapMarkerRedirects = { }

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = addonTexture
end

function RegisterAddonMapMarker(esoTexture, addonMapMarkerName)
    mapMarkerRedirects[esoTexture] = addonMapMarkerName
end

RegisterAddonMapMarker("esoui/art/icons/poi/poi_camp_complete.dds", "poi_camp_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_city_complete.dds", "poi_city_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_delve_complete.dds", "poi_delve_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_dwemerruin_complete.dds", "poi_dwemerruin_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_explorable_complete.dds", "poi_delve_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_keep_complete.dds", "poi_keep_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_mundus_complete.dds", "poi_mundus_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_tower_complete.dds", "poi_keep_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/poi/poi_wayshrine_complete.dds", "poi_wayshrine_complete.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_bank.dds", "servicepin_bank.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_caravan.dds", "servicepin_caravan.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_dock.dds", "servicepin_dock.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_fence.dds", "servicepin_fence.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_inn.dds", "servicepin_inn.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_magesguild.dds", "servicepin_magesguild.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_museum.dds", "servicepin_museum.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_outfitter.dds", "servicepin_outfitter.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_respecaltar.dds", "servicepin_respecaltar.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_shadowysupplier.dds", "servicepin_shadowysupplier.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_stable.dds", "servicepin_stable.dds")
RegisterAddonMapMarker("esoui/art/icons/servicemappins/servicepin_vendor.dds", "servicepin_vendor.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_camp_complete.dds", "poi_camp_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_city_complete.dds", "poi_city_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_delve_complete.dds", "poi_delve_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_dwemerruin_complete.dds", "poi_dwemerruin_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_explorable_complete.dds", "poi_delve_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_keep_complete.dds", "poi_keep_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_mundus_complete.dds", "poi_mundus_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_tower_complete.dds", "poi_keep_complete.dds")
RegisterAddonMapMarker("esoui/art/tutorial/poi_wayshrine_complete.dds", "poi_wayshrine_complete.dds")

function PaperUI:EnableAllTextures()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, addonTexture)
    end

    for esoTexture, addonMapMarkerName in pairs(mapMarkerRedirects) do
        RedirectTexture(esoTexture, PaperUI.Directories.MapMarkers .. "/" .. string.gsub(PaperUI.SavedVariables.MapMarkersStyle, "%s+", "") .. "/" .. addonMapMarkerName)
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
