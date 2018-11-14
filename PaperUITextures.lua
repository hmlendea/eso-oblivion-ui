local textureRedirects = { }
local mapMarkerRedirects = { }

function RegisterAddonTexture(esoTexture, addonTexture)
    textureRedirects[esoTexture] = addonTexture
end

function RegisterAddonMapMarker(esoTexture, addonMapMarkerName)
    mapMarkerRedirects[esoTexture] = addonMapMarkerName
end

function PaperUI:RegisterTextures()
    textureRedirects = { }
    mapMarkerRedirects = { }
    
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_areaofinterest_complete", "landmark")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_areaofinterest_incomplete", "landmark_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_ayleidruin_complete", "ayleid_ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_ayleidruin_incomplete", "ayleid_ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_camp_complete", "camp")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_camp_incomplete", "camp_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_cave_complete", "cave")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_cave_incomplete", "cave_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_city_complete", "city")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_city_incomplete", "city_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_darkbrotherhood_complete", "dark_brotherhood")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_darkbrotherhood_incomplete", "dark_brotherhood_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_delve_complete", "delve")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_delve_incomplete", "delve_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_dock_complete", "dock")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_dock_incomplete", "dock_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_dwemerruin_complete", "dwemer_ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_dwemerruin_incomplete", "dwemer_ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_explorable_complete", "delve")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_explorable_incomplete", "delve_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_farm_complete", "farm")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_farm_incomplete", "farm_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_areaofinterest_complete", "landmark")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_areaofinterest_incomplete", "landmark_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_ayleidruin_complete", "ayleid_ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_ayleidruin_incomplete", "ayleid_ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_camp_complete", "camp")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_camp_incomplete", "camp_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_cave_complete", "cave")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_cave_incomplete", "cave_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_dwemerruin_complete", "dwemer_ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_dwemerruin_incomplete", "dwemer_ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_house_glow", "_glow_empty")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_house_owned", "home")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_house_unowned", "home_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_keep_complete", "keep")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_keep_incomplete", "keep_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_mine_complete", "mine")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_mine_incomplete", "mine_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_ruin_complete", "ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_group_ruin_incomplete", "ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_groupboss_complete", "boss")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_groupboss_incomplete", "boss_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_groupdelve_complete", "delve")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_groupdelve_incomplete", "delve_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_grove_complete", "grove")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_grove_incomplete", "grove_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_icsewer_complete", "sewer")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_icsewer_incomplete", "sewer_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_keep_complete", "keep")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_keep_incomplete", "keep_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_mine_complete", "mine")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_mine_incomplete", "mine_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_mundus_complete", "mundus_stone")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_mundus_incomplete", "mundus_stone_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_portal_complete", "dolmen")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_portal_incomplete", "dolmen_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_ruin_complete", "ruin")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_ruin_incomplete", "ruin_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_sewer_complete", "sewer")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_sewer_incomplete", "sewer_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_tower_complete", "keep")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_tower_incomplete", "keep_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_town_complete", "town")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_town_incomplete", "town_unexplored")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_wayshrine_complete", "wayshrine")
    RegisterAddonMapMarker("esoui/art/icons/poi/poi_wayshrine_incomplete", "wayshrine_unexplored")
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
    RegisterAddonMapMarker("esoui/art/tutorial/poi_areaofinterest_complete", "landmark")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_ayleidruin_complete", "ayleid_ruin")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_camp_complete", "camp")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_cave_complete", "cave")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_city_complete", "city")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_delve_complete", "delve")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_dock_complete", "dock")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_dwemerruin_complete", "dwemer_ruin")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_explorable_complete", "delve")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_farm_complete", "farm")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_groupboss_complete", "boss")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_grove_complete", "grove")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_keep_complete", "keep")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_ruin_complete", "ruin")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_sewer_complete", "sewer")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_tower_complete", "keep")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_town_complete", "town")
    RegisterAddonMapMarker("esoui/art/tutorial/poi_wayshrine_complete", "wayshrine")
    RegisterAddonMapMarker("SkyShards/Icons/Skyshard-collected", "skyshard")
    RegisterAddonMapMarker("SkyShards/Icons/Skyshard-unknown", "skyshard_unexplored")
end

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
