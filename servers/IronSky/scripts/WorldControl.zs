#Thermal Monitor
recipes.addShaped(<worldcontrol:ic2_reactor_monitor>, 
 [[<ic2:plate:5>, <ic2:plate:5>, <ic2:plate:5>],
  [<ic2:plate:5>, <ic2:crafting:1>, <ic2:plate:5>],
  [<ic2:plate:5>, <minecraft:redstone>, <ic2:plate:5>]]);
  
#Remote Thermal Monitor
recipes.addShaped(<worldcontrol:ic2_remote_reactor_monitor>, 
 [[null, <ic2:frequency_transmitter>, null],
  [null, <ic2:resource:12>, null],
  [null, <worldcontrol:ic2_reactor_monitor>, null]]);
  
#Howler Alarm
recipes.addShaped(<worldcontrol:howler_alarm>, 
 [[<minecraft:noteblock>, <minecraft:noteblock>, <minecraft:noteblock>],
  [<ic2:plate:3>, <ic2:crafting:1>, <ic2:plate:3>],
  [<ic2:plate:3>, <minecraft:redstone>, <ic2:plate:3>]]);
  
#Industrial Alarm
recipes.addShaped(<worldcontrol:industrial_alarm>, 
 [[<ic2:plate>, <ic2:plate>, <ic2:plate>],
  [<ic2:plate>, <worldcontrol:howler_alarm>, <ic2:plate>],
  [<ic2:plate>, <minecraft:redstone>, <ic2:plate>]]);
  
#Basic Info Panel
recipes.addShaped(<worldcontrol:info_panel>, 
 [[<minecraft:stained_glass_pane:5>, <minecraft:stained_glass_pane:5>, <minecraft:stained_glass_pane:5>],
  [<ic2:crafting:1>, <ic2:resource:12>, <ic2:crafting:1>],
  [<minecraft:dye>, <minecraft:redstone>, <minecraft:dye>]]);
  
#Basic Info Panel Extender
recipes.addShaped(<worldcontrol:info_panel_extender>, 
 [[<minecraft:stained_glass_pane:5>, <minecraft:stained_glass_pane:5>, <minecraft:stained_glass_pane:5>],
  [<ore:plankWood>, <ic2:crafting:1>, <ore:plankWood>],
  [<ore:plankWood>, <minecraft:redstone>, <ore:plankWood>]]);
  
#Thermometer
recipes.addShaped(<worldcontrol:thermometer>, 
 [[<ic2:plate:3>, <minecraft:glass>, null],
  [<minecraft:glass>, <minecraft:water_bucket>, <minecraft:glass>],
  [null, <minecraft:glass>, <minecraft:glass>]]);
  
#EU Reactor Kit
recipes.addShaped(<worldcontrol:ic2_reactor_kit>,
[[<worldcontrol:thermometer>, <ic2:frequency_transmitter>],
 [<minecraft:paper>, <minecraft:redstone>]]);
 
#Fluid Kit
recipes.addShaped(<worldcontrol:fluid_kit>,
[[<minecraft:bucket>, <ic2:frequency_transmitter>],
 [<minecraft:paper>, <minecraft:redstone>]]);
 
#EU Energy Kit
recipes.addShaped(<worldcontrol:ic2_energy_storage_kit>,
[[<minecraft:redstone>, <ic2:frequency_transmitter>],
 [<minecraft:paper>, <minecraft:dye:14>]]);
 
#Range Upgrade
recipes.addShaped(<worldcontrol:upgrade_cards>, 
 [[<ic2:crafting:5>, <ic2:frequency_transmitter>, <ic2:crafting:5>],
  [<ic2:plate:3>, <ic2:plate:3>, <ic2:plate:3>],
  [<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ic2:crafting:1>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte})]]);
  
#Color Upgrade
recipes.addShaped(<worldcontrol:upgrade_cards:1>, 
 [[<minecraft:dye:1>, <minecraft:dye:11>, <minecraft:dye:2>],
  [<minecraft:dye:15>, <ic2:crafting:1>, <minecraft:dye:13>],
  [<minecraft:dye>, <minecraft:dye:6>, <minecraft:dye:4>]]);
  
#Portateble Information Panel
recipes.addShaped(<worldcontrol:remote_panel>, 
 [[<worldcontrol:upgrade_cards>, <ic2:frequency_transmitter>, <worldcontrol:upgrade_cards:1>],
  [<ic2:re_battery:*>, <worldcontrol:info_panel>, <ic2:re_battery:*>],
      [<ic2:crafting:15>, <ic2:crafting:15>, <ic2:crafting:15>]]);
  
