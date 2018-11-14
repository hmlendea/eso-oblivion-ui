local textureRedirects = { }

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = addonTexture
end

RegisterAddonTexture("esoui/art/icons/poi/poi_camp_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_camp_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_city_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_delve_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_dwemerruin_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_dwemerruin_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_explorable_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_keep_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_mundus_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/icons/poi/poi_tower_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
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
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_shadowysupplier.dds", PaperUI.Directories.MapMarkers .. "/servicepin_shadowysupplier.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_stable.dds", PaperUI.Directories.MapMarkers .. "/servicepin_stable.dds")
RegisterAddonTexture("esoui/art/icons/servicemappins/servicepin_vendor.dds", PaperUI.Directories.MapMarkers .. "/servicepin_vendor.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_camp_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_camp_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_city_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_city_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_delve_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_dwemerruin_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_dwemerruin_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_explorable_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_delve_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_keep_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_mundus_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_mundus_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_tower_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_keep_complete.dds")
RegisterAddonTexture("esoui/art/tutorial/poi_wayshrine_complete.dds", PaperUI.Directories.MapMarkers .. "/poi_wayshrine_complete.dds")

function PaperUITextures:EnableAll()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, addonTexture)
    end
end

function PaperUITextures:DisableAll()
    for esoTexture, addonTexture in pairs(textureRedirects) do
        RedirectTexture(esoTexture, esoTexture)
    end
end
