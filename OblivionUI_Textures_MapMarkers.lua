local mapMarkerRedirects = { }

function RegisterMapMarkerTexture(sourceTexturePath, targetTextureName)
    mapMarkerRedirects[sourceTexturePath] = targetTextureName
end

function OblivionUI:EnableMapMarkersTextures()
    for sourceTexturePath, targetTextureName in pairs(mapMarkerRedirects) do
        RedirectTexture(sourceTexturePath .. ".dds", OblivionUI.Directories.MapMarkers .. "/" .. string.gsub(OblivionUI.SavedVariables.MapMarkersStyle, "%s+", "") .. "/" .. targetTextureName .. ".dds")
    end
end

function OblivionUI:DisableMapMarkersTextures()
    for sourceTexturePath, targetTextureName in pairs(mapMarkerRedirects) do
        RedirectTexture(sourceTexturePath, sourceTexturePath)
    end
end

function OblivionUI:RegisterTextures()
    mapMarkerRedirects = { }
    
    RegisterMapMarkerTexture("esoui/art/compass/quest_icon_door_assisted", "door")
    RegisterMapMarkerTexture("esoui/art/compass/quest_icon_door", "door_unexplored")
    RegisterMapMarkerTexture("esoui/art/compass/repeatablequest_icon_door_assisted", "door")
    RegisterMapMarkerTexture("esoui/art/compass/repeatablequest_icon_door", "door_unexplored")
    RegisterMapMarkerTexture("esoui/art/floatingmarkers/quest_icon_door_assisted", "door")
    RegisterMapMarkerTexture("esoui/art/floatingmarkers/quest_icon_door", "door_unexplored")
    RegisterMapMarkerTexture("esoui/art/floatingmarkers/repeatablequest_icon_door_assisted", "door")
    RegisterMapMarkerTexture("esoui/art/floatingmarkers/repeatablequest_icon_door", "door_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_areaofinterest_complete", "landmark")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_areaofinterest_incomplete", "landmark_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_ayleidruin_complete", "ayleid_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_ayleidruin_incomplete", "ayleid_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_camp_complete", "camp")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_camp_incomplete", "camp_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cave_complete", "cave")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cave_incomplete", "cave_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cemetary_complete", "cemetery")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cemetary_incomplete", "cemetery_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cemetery_complete", "cemetery")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_cemetery_incomplete", "cemetery_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_city_complete", "city")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_city_incomplete", "city_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_crypt_complete", "crypt")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_crypt_incomplete", "crypt_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_daedricruin_complete", "daedric_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_daedricruin_incomplete", "daedric_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_darkbrotherhood_complete", "dark_brotherhood")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_darkbrotherhood_incomplete", "dark_brotherhood_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_delve_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_delve_incomplete", "delve_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dock_complete", "dock")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dock_incomplete", "dock_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dungeon_complete", "public_dungeon")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dungeon_incomplete", "public_dungeon_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dwemerruin_complete", "dwemer_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_dwemerruin_incomplete", "dwemer_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_explorable_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_explorable_incomplete", "delve_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_farm_complete", "farm")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_farm_incomplete", "farm_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_gate_complete", "gate")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_gate_incomplete", "gate_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_areaofinterest_complete", "landmark")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_areaofinterest_incomplete", "landmark_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ayleidruin_complete", "ayleid_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ayleidruin_complete", "ayleid_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ayleidruin_incomplete", "ayleid_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ayleidruin_incomplete", "ayleid_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_camp_complete", "camp")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_camp_incomplete", "camp_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_cave_complete", "cave")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_cave_incomplete", "cave_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_cemetery_complete", "cemetery")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_cemetery_incomplete", "cemetery_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_crypt_complete", "crypt")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_crypt_incomplete", "crypt_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_dwemerruin_complete", "dwemer_ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_dwemerruin_incomplete", "dwemer_ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_gate_complete", "gate")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_gate_incomplete", "gate_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_house_glow", "_glow_empty")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_house_owned", "home")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_house_unowned", "home_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_keep_complete", "keep")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_keep_incomplete", "keep_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_lighthouse_complete", "watchtower")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_lighthouse_incomplete", "watchtower_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_mine_complete", "mine")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_mine_incomplete", "mine_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ruin_complete", "ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_group_ruin_incomplete", "ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupboss_complete", "boss")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupboss_incomplete", "boss_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupdelve_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupdelve_incomplete", "delve_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupinstance_complete", "dungeon")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_groupinstance_incomplete", "dungeon_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_grove_complete", "grove")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_grove_incomplete", "grove_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_icsewer_complete", "sewer")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_icsewer_incomplete", "sewer_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_keep_complete", "keep")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_keep_incomplete", "keep_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_lighthouse_complete", "watchtower")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_lighthouse_incomplete", "watchtower_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mine_compete", "mine")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mine_complete", "mine")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mine_incompete", "mine_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mine_incomplete", "mine_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mundus_complete", "mundus_stone")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_mundus_incomplete", "mundus_stone_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_portal_complete", "dolmen")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_portal_incomplete", "dolmen_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_raiddungeon_complete", "trial")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_raiddungeon_incomplete", "trial_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_ruin_complete", "ruin")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_ruin_incomplete", "ruin_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_sewer_complete", "sewer")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_sewer_incomplete", "sewer_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_soloinstance_complete", "dungeon")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_soloinstance_incomplete", "dungeon_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_solotrial_complete", "trial")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_solotrial_incomplete", "trial_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_tower_complete", "keep")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_tower_incomplete", "keep_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_town_complete", "town")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_town_incomplete", "town_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_wayshrine_complete", "wayshrine")
    RegisterMapMarkerTexture("esoui/art/icons/poi/poi_wayshrine_incomplete", "wayshrine_unexplored")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_alchemy", "alchemist")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_bank", "bank")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_caravan", "caravan")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_dock", "dock")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_dyestation", "dying_station")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_enchanting", "enchanter")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_event", "event")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_fence", "outlaws_refuge")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_inn", "inn")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_magesguild", "mages_guild")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_museum", "museum")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_outfitter", "outfitter")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_respecaltar", "rededication_stone")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_shadowysupplier", "dark_brotherhood")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_stable", "stable")
    RegisterMapMarkerTexture("esoui/art/icons/servicemappins/servicepin_vendor", "merchant")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_delve", "delve")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_dungeon", "public_dungeon")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_groupdelve", "delve")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_groupinstance", "dungeon")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_raiddungeon", "trial")
    RegisterMapMarkerTexture("esoui/art/loadingtips/loadingtip_soloinstance", "dungeon")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_areaofinterest_complete", "landmark")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_ayleidruin_complete", "ayleid_ruin")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_camp_complete", "camp")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_cave_complete", "cave")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_cemetary_complete", "cemetery")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_city_complete", "city")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_crypt_complete", "crypt")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_daedricruin_complete", "daedric_ruin")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_delve_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_dock_complete", "dock")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_dungeon_complete", "public_dungeon")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_dwemerruin_complete", "dwemer_ruin")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_explorable_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_farm_complete", "farm")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_gate_complete", "gate")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_groupboss_complete", "boss")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_groupdelve_complete", "delve")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_grove_complete", "grove")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_keep_complete", "keep")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_raiddungeon_complete", "trial")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_ruin_complete", "ruin")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_sewer_complete", "sewer")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_soloinstance_complete", "dungeon")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_solotrial_complete", "trial")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_tower_complete", "keep")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_town_complete", "town")
    RegisterMapMarkerTexture("esoui/art/tutorial/poi_wayshrine_complete", "wayshrine")
    RegisterMapMarkerTexture("LoreBooks/Icons/book1-invert", "book")
    RegisterMapMarkerTexture("LoreBooks/Icons/book1", "book")
    RegisterMapMarkerTexture("LoreBooks/Icons/book2-invert", "book_eidetic")
    RegisterMapMarkerTexture("LoreBooks/Icons/book2", "book_eidetic")
    RegisterMapMarkerTexture("SkyShards/Icons/Skyshard-collected", "skyshard")
    RegisterMapMarkerTexture("SkyShards/Icons/Skyshard-unknown", "skyshard_unexplored")
end
