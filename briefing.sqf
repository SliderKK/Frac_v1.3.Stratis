// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Credits"];
player createDiarySubject ["admins", "Admin List"];
player createDiarySubject ["gearlevel", "Gear Level Info"];

player createDiaryRecord ["changelog",
[
"FRACTURED Logs",
"
<br/>[ADDED] ''Bury Dead Body'' to Player menu.
<br/>[REMOVED] Uniforms from random crates.
<br/>[CHANGE] Increase Vehicle Prices of OP Vehicles.
<br/>[NEW] Changed randomization on AI a little more.
<br/>[FIX] Drugs have been re-added and fixed.
<br/>[NEW] All AI now have randomized Loadouts
<br/>[NEW] All items not in Store found in Missions can be sold for a high amount.
<br/>[NEW] Outpost Missions
<br/>[FIX] Clean Store Script
<br/>[FIX] Mission Variable Calling
<br/>[CHANGE] Lowered Chances of Optics in Mission Crates.
<br/>[ADDED] Night Stalker, TWS, TWS MG to Mission Crates.
<br/>[FIX] All vest now sell for 50% of value.
<br/>[CHANGE] Increased Sunken Treasure Mission Reward Amount.
<br/>[CHANGE] Balanced Tank and Launcher Prices.
<br/>[CHANGE] Raised Money Shipment Reward Amounts.
<br/>[ADDED] Cleaner Store areas.
<br/>[ADDED] Dynamic Mission Markers.
<br/>[CHANGE] Enemy AI all have matching uniforms.
<br/>[CHANGE] Loot is now Randomized in Most Mission Crates.
<br/>[FIX] Most Missions.
<br/>[CHANGE] NPCs now drop cash.
<br/>[CHANGE] Status bar.
<br/>[REMOVED] Some missions due to insta-popping.
<br/>[CHANGE] Changed vehicle prices.
<br/>[ADDED] Mine Detectors to Engineer Kits, Gear Levels ONLY!.
<br/>[FIXED] Gear going missing or spawning naked.
<br/>[CHANGE] Unstuck player function only throws players in the air for the ground height plus 20 meters so that they cannot abuse this as a relocate tactic.
<br/>[FIX] Gearlevel 0 or defult spawn is fixed.
<br/>[FIX] Double tap works.
<br/>[ADDED] Gearlevels on map again after 1.3 update.
<br/>[FIX] UAV's will no longer being able to use thermals what so ever not even for a small ammount of time because it kills off instantly now.
<br/>[FIX] Sway or aiming is the SAME as it was on 1.2 version of the server.
<br/>[FIX] View distance is fixed now and the ground across the board is set to 1.
<br/>[FIX] Stealth uniform can be bought as indie.

"
]];


player createDiaryRecord ["changelog",
[
"v1.3b",
"
<br/>[Added] Private parking
<br/>[Added] Private storage
<br/>[Added] Vehicle ownership
<br/>[Added] Vehicle locking
<br/>[Added] Vehicle selling
<br/>[Added] Mine saving
<br/>[Added] Resupply trucks
<br/>[Added] CH View Distance
<br/>[Added] Map legend
<br/>[Added] UAV side persistence
<br/>[Added] headless server cleanup
<br/>[Changed] Static designators now available to indies
<br/>[Changed] Some store prices
<br/>[Fixed] Many other minor changes and fixes
"
]];

player createDiaryRecord ["changelog",
[
"v1.3",
"
<br/>[Added] Tanoa version
<br/>[Added] Apex content on dev/preview branches
<br/>[Added] Sticky explosive charges
br/> [Added] Heavy towing and airlifting
<br/>[Added] Load dragged injured friendly in vehicles
<br/>[Added] Eject loaded injured friendly from vehicles
<br/>[Added] Autostabilize when loaded in medical vehicle
<br/>[Added] 'Finish off' action to slay injured enemies
<br/>[Added] Improved injured unit detection
<br/>[Added] Scoreboard persistence option for servers
<br/>[Added] Fatal PvP headshots option for servers
<br/>[Added] Custom death messages option for servers
<br/>[ADded] Auto-center heli turret on manual fire
<br/>[Added] UAV side persistence
<br/>[Added] More textures for some vehicles in store
<br/>[Added] Abandoned quadcopter cleanup
<br/>[Added] More admin menu logging
<br/>[Changed] Reduced heli missile damage
<br/>[Changed] Improved mission crate loot
<br/>[Changed] Vest armor values in general store
<br/>[Changed] Increased Mag Repack flexibility
<br/>[Changed] Toggled off autonomous on static designators
<br/>[Changed] Disabled rain due to weather desync
<br/>[Fixed] Engineer with toolkit can now always repair
<br/>[Fixed] Improved missile lock-on
<br/>[Fixed] Improvements to kill tracking system
<br/>[Fixed] Items and money not dropping on injured logout
<br/>[Fixed] Combat log timer not resetting on death
<br/>[Fixed] Player not always ejected on injury
<br/>[Fixed] Double kill/death count
<br/>[Fixed] Spawn cooldowns resetting on rejoin
<br/>[Fixed] Striders spawning without laser batteries
<br/>[Fixed] Disabled rain due to syncing issues
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.2b",
"
<br/>[Added] Scoreboard scrolling via mousewheel
<br/>[Added] New paintjobs for Kajman, Strider, Gorgon, Hatchback
<br/>[Changed] Hostile Heli (single) crates now spawn on touchdown
<br/>[Changed] Lowered Ifrit center of mass to reduce rollovers
<br/>[Changed] Updated antihack database
<br/>[Fixed] Saved grenades not throwable on rejoin
<br/>[Fixed] Corpses not ejecting from vehicle wrecks
<br/>[Fixed] Items not dropping from vehicle wreck corpses
<br/>[Fixed] Revive not triggering properly on fatal shot
<br/>[Fixed] Vehicle turret ammo saving issues
<br/>[Fixed] Too low damage resistance during revive mode
<br/>[Fixed] UGVs not airliftable via R3F
<br/>[Fixed] Revive broken after getting run over by vehicles
<br/>[Fixed] Veh respawn not being delayed when owner is within 1km
<br/>[Fixed] All armor values showing 0 in general store
<br/>[Fixed] Supplies category in general store sometimes empty
<br/>[Fixed] Server rules not showing anymore in map menu
<br/>[Fixed] Territory info overlapping with vehicle HUD
<br/>[Fixed] Vehicle contents selling money exploit
<br/>[Fixed] Antihack kicks not always working properly
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.2",
"
<br/>[Added] Mag Repack by Outlawled (Ctrl + " + NKEYNAME(19) + ")
<br/>[Added] Adjustable NV by xx-LSD-xx (Shift + PageUp/Down)
<br/>[Added] New vehicle store paintjobs
<br/>[Added] Town spawn cooldown
<br/>[Added] Ghosting timer
<br/>[Added] Object lock restriction near stores and missions
<br/>[Added] Headless client object saving
<br/>[Added] Time and weather saving
<br/>[Changed] Expanded UAV control restriction to quadcopters
<br/>[Changed] Injured players no longer count as town enemies
<br/>[Changed] Upgraded extDB to extDB2 by Torndeco
<br/>[Changed] Updated antihack
<br/>[Fixed] Old spawn beacons no longer shown on spawn menu
<br/>[Fixed] Multiple money duping exploits
<br/>[Fixed] Vehicles and objects sometimes disappearing from DB
<br/>[Fixed] Severe injuries caused by jumping over small ledges
<br/>[Fixed] Antihack kicks due to RHS, MCC, AGM, ACE3, ALiVE
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.1b",
"
<br/>[Added] Marksmen DLC content
<br/>[Added] Prevent usage of commander camera
<br/>[Added] Emergency eject hotkey (Ctrl + " + AKEYNAME("GetOut") + ")
<br/>[Added] Restricted UAV connection to owner's group
<br/>[Changed] Improved purchased vehicle setup time
<br/>[Changed] Admins can now use global voice chat
<br/>[Changed] Updated antihack
<br/>[Fixed] Corpses not being ejected from vehicles
<br/>[Fixed] Thermal imaging not working for UAVs
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.1",
"
<br/>[Added] ATMs
<br/>[Added] Union Jack vehicle color
<br/>[Added] Skins hidden in gamefiles for MH-9, Mohawk, and Taru
<br/>[Added] Improved admin spectate camera by micovery
<br/>[Added] Earplugs (End key)
<br/>[Changed] Full rewrite of vehicle respawning system
<br/>[Fixed] Player moved to position too early during save restore
<br/>[Fixed] Mission timeout not extending on AI kill
<br/>[Fixed] Admin teamkill unlocking
<br/>[Fixed] Improved FPS fix
<br/>[Fixed] Running animation parachute glitch
<br/>[Fixed] Various other minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.0c",
"
<br/>[Added] MySQL support via extDB extension
<br/>[Added] Town Invasion mission
<br/>[Added] Chain-reaction player kill tracking
<br/>[Added] Force Save action for purchased and captured vehicles
<br/>[Added] Autokick players previously detected by antihack
<br/>[Added] Entity caching script for headless client
<br/>[Added] Tron suits to general store
<br/>[Added] Red lines on map for AIs wandering away from missions
<br/>[Changed] Mission timeout gets extended on AI kill
<br/>[Changed] Transport Heli mission Taru variant to Bench
<br/>[Changed] Spawn beacon item drop to sleeping bag
<br/>[Fixed] More money exploits
<br/>[Fixed] Scoreboard ordering
<br/>[Fixed] Vehicle repair and refuel sometimes not working
<br/>[Fixed] Injured players' corpses being deleted on disconnect
<br/>[Fixed] Static weapon disassembly prevention
<br/>[Fixed] Excess bought rockets ending up in uniform or vest
<br/>[Fixed] Various other minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v1.0b",
"
<br/>[Added] Helicopters DLC content
<br/>[Added] Revamped respawn menu
<br/>[Added] 250m altitude limit for territory capture
<br/>[Added] HALO insertion on spawn beacons
<br/>[Added] New vehicle store textures
<br/>[Changed] Increased damage done to planes by 50%
<br/>[Changed] Plane engines shutdown when above 90% damage
<br/>[Changed] Player names can also be toggled with Home key
<br/>[Changed] Increased ATGM UAV price
<br/>[Changed] Increased prices from thermal scopes again
<br/>[Changed] Minor edits to spawn loadouts
<br/>[Fixed] FPS drop that began in v0.9h
<br/>[Fixed] Saved UAVs not being connectable
<br/>[Fixed] Indies unable to get in UGVs
<br/>[Fixed] Blinking fog
<br/>[Fixed] Clipped numbers on scoreboard
<br/>[Fixed] Minor other optimizations and fixes
"
]];

player createDiaryRecord ["changelog",
[
"v1.0",
"
<br/>[Added] Custom scoreboard
<br/>[Added] Mission and store vehicle saving
<br/>[Added] Player markers on GPS and UAV Terminal
<br/>[Added] Holster actions
<br/>[Changed] Full rewrite of side mission system
<br/>[Changed] Windows key toggles player marker names too
<br/>[Changed] New loading picture by Gameaholic.se
<br/>[Fixed] Weapon sometimes disppearing when moving objects
<br/>[Fixed] More money duping exploits
<br/>[Fixed] Store menu sizes on smaller aspect ratios
<br/>[Fixed] Hunger and thirst reset on rejoin
<br/>[Fixed] Other minor optimizations and fixes
"
]];

player createDiaryRecord ["changelog",
[
"v0.9h",
"
<br/>[Added] Custom revive system based on Farooq's Revive
<br/>[Added] Territory payroll at regular intervals
<br/>[Added] Emergency eject and free parachutes (jump key)
<br/>[Added] Player names toggled with Windows key
<br/>[Added] Increased missile damage against tanks and helis
<br/>[Added] Ability to stash money in weapon crates
<br/>[Added] Ability to sell vehicle inventory at stores
<br/>[Added] More money shipment mission variants
<br/>[Added] Reduced wheel damage from collisions
<br/>[Added] Wreck salvaging
<br/>[Added] Selling bin in stores
<br/>[Added] Karts DLC content in stores
<br/>[Added] Camo sniper rifles in gunstore
<br/>[Added] Repair Offroad in vehicle store
<br/>[Added] Team players on map as server option
<br/>[Added] Unlimited stamina server option
<br/>[Added] Static weapon saving server option
<br/>[Added] More push vehicle actions
<br/>[Added] Paradrop option for airlifted vehicles
<br/>[Added] Preload checkbox on respawn menu
<br/>[Added] Remote explosives store distance restriction
<br/>[Added] Server time multipliers for day and night
<br/>[Added] Addon-less profileNamespace server persistence
<br/>[Added] Linux server compatibility
<br/>[Added] Basic support for headless client
<br/>[Changed] Independent territory capture is now group-based
<br/>[Changed] Towns blocked if more enemies than friendlies
<br/>[Changed] Increased ammo/fuel/repair cargo for resupply trucks
<br/>[Changed] Increased territory capture rewards for Altis
<br/>[Changed] Increased money mission rewards
<br/>[Changed] Weapon loot in buildings now disabled by default
<br/>[Changed] Mission crates loot was made more random
<br/>[Changed] Thermal imaging is now available on UAVs
<br/>[Changed] Increased vehicle store prices
<br/>[Changed] Increased prices for thermal optics
<br/>[Changed] Increased player icons up to 2000m
<br/>[Changed] Improved antihack
<br/>[Changed] Improved FPS
<br/>[Fixed] Vehicle store purchase errors due to server lag
<br/>[Fixed] Corpse created when leaving with player saving
<br/>[Fixed] Custom vehicle damage handling not working
<br/>[Fixed] Indie-indie spawn beacon stealing
<br/>[Fixed] Repair kit and jerrycan distance limit
<br/>[Fixed] Spawn beacon packing and stealing restrictions
<br/>[Fixed] Not able to lock static weapons
<br/>[Fixed] Unbreakable store windows
<br/>[Fixed] Stratis airbase gunstore desk glitches
<br/>[Fixed] Missions sometimes completing instantaneously
<br/>[Fixed] Object ammo/fuel/repair cargo not saving
<br/>[Fixed] Respawn menu aspect ratio on some resolutions
<br/>[Fixed] Minor bugs with group system
<br/>[Fixed] Minor bugs with player items
<br/>[Fixed] Various other minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"v0.9g",
"
<br/>[Added] - Vehicle stores
<br/>[Added] - New lootspawner by Na_Palm, stuff in ALL buildings
<br/>[Added] - New jets and truck added in A3 v1.14
<br/>[Added] - New AAF vehicles added in A3 v1.08
<br/>[Added] - New camos for Mk20 and MX in gunstores
<br/>[Added] - Ability to push plane backwards
<br/>[Added] - Ability to sell quadbike contents like crates
<br/>[Added] - Abort delay during combat when player saving on
<br/>[Changed] - Improved respawn menu
<br/>[Changed] - Respawn now longer to preload destination
<br/>[Changed] - Optimized player icons
<br/>[Changed] - Optimized FPS fix
<br/>[Changed] - Improved server persistence (requires iniDBI v1.4+)
<br/>[Changed] - Improved player saving (server-specific)
<br/>[Changed] - Improved base saving (server-specific)
<br/>[Changed] - Reduced starting gear
<br/>[Changed] - Modified some store prices
<br/>[Changed] - Reduced initial fuel in cars and helis
<br/>[Changed] - Removed Buzzard jet from too short runways
<br/>[Changed] - Removed Kavala castle territory for use as base
<br/>[Changed] - Increased vehicle repair time to 20 sec.
<br/>[Changed] - Increased owner unlocking time to 10 sec.
<br/>[Changed] - Toggling spawn beacon perms is now instant
<br/>[Changed] - Improved Take option for player items
<br/>[Changed] - Added option to cancel towing selection
<br/>[Changed] - Added machine gunner to main mission NPCs
<br/>[Changed] - Added grenadier to side mission NPCs
<br/>[Fixed] - Error messages in various menus
<br/>[Fixed] - Crash when toggling spawn beacon perms
<br/>[Fixed] - Error when hacking warchests
<br/>[Fixed] - Vehicle towing and lifting positions
<br/>[Fixed] - Repair Vehicle option showing for brand new vehicles
<br/>[Fixed] - Vest purchase price
<br/>[Fixed] - Vest and helmet armor value
<br/>[Fixed] - NPC leader now has launcher ammo
"
]];

player createDiaryRecord ["changelog",
[
"v0.9f",
"
<br/>[Added] - Money missions
<br/>[Added] - Sell Crate Items option at stores when moving crate
<br/>[Changed] - Reorganized loots for crates and trucks
<br/>[Fixed] - Broken Warchest menu
<br/>[Fixed] - Spawn beacons not working for Independent groups
<br/>[Fixed] - Player icons position inside buildings
<br/>[Fixed] - MRAPs and quadbikes not spawning
<br/>[Fixed] - Broken money rewards for territories
"
]];

player createDiaryRecord ["changelog",
[
"v0.9e",
"
<br/>[Added] - Territory system
<br/>[Added] - Jumping option (step over while running)
<br/>[Added] - New weapons from v1.04 update
<br/>[Changed] - Water and food now use water bottles and baked beans
<br/>[Fixed] - Store object purchases not operating as intended
<br/>[Fixed] - Objects purchased from stores not saving properly
<br/>[Fixed] - Minor server-side memory leak
"
]];

player createDiaryRecord ["changelog",
[
"v0.9d",
"
<br/>[Added] - Store object purchases
<br/>[Changed] - New UI by KoS
"
]];

player createDiaryRecord ["changelog",
[
"v0.9c",
"
<br/>[Changed] - Instant money pickup and drop
<br/>[Changed] - Increased plane and heli spawning odds
<br/>[Fixed] - FPS fix improvements
<br/>[Fixed] - Vehicles disappearing when untowed or airdropped
"
]];

player createDiaryRecord ["changelog",
[
"v0.9b",
"
<br/>[Initial release] - Welcome to Altis!
"
]];


player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* Champ-1 (CHVD)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* gtoddc (A3W forums)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Killzone_Kid (KillzoneKid.com)
<br/>	* Krunch (GitHub)
<br/>	* LouDnl (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* Outlawled (Armaholic)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* xx-LSD-xx (Armaholic)
<br/>	* Zenophon (BIS Forums)
<br/>
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];


_WASD = AKEYNAME("MoveForward") + "," + AKEYNAME("MoveBack") + "," + AKEYNAME("TurnLeft") + "," + AKEYNAME("TurnRight");

player createDiaryRecord ["infos",
[
"Admin Spectate keys",
"
<br/>Admin menu Spectate camera controls:
<br/>
<br/>Shift + " + AKEYNAME("NextChannel") + " (next player)
<br/>Shift + " + AKEYNAME("PrevChannel") + " (previous player)
<br/>Ctrl + " + NKEYNAME(18) + " (exit camera)
<br/>Ctrl + " + AKEYNAME("Chat") + " (attach/detach camera from target)
<br/>Ctrl + " + NKEYNAME(35) + " (toggle target HUD)
<br/>" + AKEYNAME("NightVision") + " (nightvision, thermal)
<br/>" + _WASD + " (move camera around)
<br/>" + NKEYNAME(16) + " (move camera up)
<br/>" + NKEYNAME(44) + " (move camera down)
<br/>Mouse Move (rotate camera)
<br/>Mouse Wheel Up (increase camera speed)
<br/>Mouse Wheel Down (decrease camera speed)
<br/>Shift + " + _WASD + " (move camera around faster)
<br/>" + AKEYNAME("ShowMap") + " (open/close map - click on map to teleport camera)
"
]];

player createDiaryRecord ["infos",
[
"Player hotkeys",
"
<br/>List of default player hotkeys:
<br/>
<br/>" + NKEYNAME(41) + " (open player menu)
<br/>" + NKEYNAME(207) + " (toggle earplugs)
<br/>" + NKEYNAME(199) + ", " + NKEYNAME(219) + ", " + NKEYNAME(220) + " (toggle player names)
<br/>Ctrl + " + AKEYNAME("GetOut") + " (emergency eject)
<br/>" + AKEYNAME("GetOver") + " (open parachute)
<br/>Shift + " + NKEYNAME(201) + " / " + NKEYNAME(209) + " (adjust nightvision)
<br/>" + NKEYNAME(22) + " (admin menu)
"
]];

player createDiaryRecord ["infos",
[
"Hints and Tips",
"
<br/><font size='18'>A3Wasteland</font>
<br/>
<br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>* Always be on the lookout for nightvision. they are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
"
]];

player createDiaryRecord ["infos",
[
"About Wasteland",
"
<br/>Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to http://forums.a3wasteland.com/
<br/>
<br/>FAQ:
<br/>
<br/>Q. What am I supposed to do here?
<br/>A. See the above description
<br/>
<br/>Q. Where can I get a gun?
<br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions, inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/>
<br/>Q. What are the blue circles on the map?
<br/>A. The circles represent town limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
<br/>
<br/>Q. Why is it so dark, I cant see.
<br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
<br/>
<br/>Q. Is it ok for me to shoot my team mates?
<br/>A. If you are member of BLUFOR or OPFOR teams, then you are NOT allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/>
<br/>Q. Whats with the canisters, baskets and big bags?
<br/>A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from food sacks and wells, or baskets and plastic canisters dropped by dead players. Food and water will also randomly spawn around the map.
<br/>
<br/>Q. I saw someone breaking a rule, what do I do?
<br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums, and make a report if the offense is serious.
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Levels",
"
<br/> When you have enough $ for A gear level, Go and apply here http://fractured-gaming.com/application-forms.php?appid=4
<br/> When your application is recieved your gear level will be changed within 48 hours.
<br/> Your Money will then be deducted from your account.
<br/> To revieve a gear level, Fill out a gear level application on the forums to upgrade your gear level.
<br/> There are 10 Levels in total.
<br/> There are 5 Prestiege Levels. (after the 1st 10 levels)
<br/> Prestiege Gear Levels allow you to spawn with either nothing or the bare minimum. 
<br/> Prestiege Gear Levels are $10,000,000 per level and Prestiege level 5 is $25,000,000
<br/> Prestiege Gear Levels are for the hardcore wasteland players with a big payoff at the end.
<br/> The Final Prestiege level allows you to pick weapons from the VR before spawning. 
"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 5",
"
<br/><font size='16'>Prestiege Level 5</font>
<br/><font size='15'>Cost: $25,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Virtural Arsenal With almost every weapon in it.

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 4",
"
<br/><font size='16'>Prestiege Level 3</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 4 Magazines
<br/> 2 Grenades

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 3",
"
<br/><font size='16'>Prestiege Level 3</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 2 Magazines
<br/> 1 Grenade

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 2",
"
<br/><font size='16'>Prestiege Level 2</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack
<br/> 45 ACP and 1 Magazine

"
]];

player createDiaryRecord ["gearlevel",
[
"Prestiege Level 1",
"
<br/><font size='16'>Prestiege Level 1</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> Bergen Backpack

"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 10",
"
<br/><font size='16'>Gear Level 10</font>
<br/><font size='15'>Cost: $10,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> An Olive Carryall
<br/> A Plate Carrier GL Rig
<br/> A GPS
<br/> A pair of Binoculars
<br/> 4 Grenades
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Light Helmet
<br/> A MK 14 with 5 Standard Mags a RCO and a suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight and suppressor instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 9",
"
<br/><font size='16'>Gear Level 9</font>
<br/><font size='15'>Cost: $9,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $1000
<br/> An Olive Carryall
<br/> A Plate Carrier GL Rig
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> An MX Marksmen rifle with 4 Mags an RCO and a suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight and Suppressor instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 8",
"
<br/><font size='16'>Gear Level 8</font>
<br/><font size='15'>Cost: $8,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $800
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Light Helmet
<br/> An MX Carbine with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 7",
"
<br/><font size='16'>Gear Level 7</font>
<br/><font size='15'>Cost: $7,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $700
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> A TRG-20 with 2 Mags and a Hologsight and Suppressor instead of a Sting
<br/> A 4-five .45 Pistol with an MRD Sight instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 6",
"
<br/><font size='16'>Gear Level 6</font>
<br/><font size='15'>Cost: $6,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $600
<br/> An Olive Carryall
<br/> An Olive Tactical Vest
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> An ECH Helmet
<br/> A TRG-20 with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 5",
"
<br/><font size='16'>Gear Level 5</font>
<br/><font size='15'>Cost: $5,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $500
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A TRG-20 with 2 Mags and a Hologsight instead of a Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 4",
"
<br/><font size='16'>Gear Level 4</font>
<br/><font size='15'>Cost: $4,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $400
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight and Suppressor on your Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> An RPG-42 Alamut with 1 Rocket
<br/> You also get extra mags for the Sting and 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 3",
"
<br/><font size='16'>Gear Level 3</font>
<br/><font size='15'>Cost: 3,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $300
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight and Suppressor on your Sting
<br/> A 4-five .45 Pistol instead of the ACP .45
<br/> You also get extra mags for the Sting and 4-five .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 2",
"
<br/><font size='16'>Gear Level 2</font>
<br/><font size='15'>Cost: $2,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $200
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> A pair of Red Goggles
<br/> A holosight on your Sting
<br/> You also get extra mags for both Sting and ACP .45
"
]];

player createDiaryRecord ["gearlevel",
[
"Gear Level 1",
"
<br/><font size='16'>Gear Level 1</font>
<br/><font size='15'>Cost: $1,000,000 ~:</font>
<br/><font size='15'>List of Perks you get at this level ~:</font>
<br/> Extra Starting Money: $100
<br/> An Olive Carryall
<br/> A GPS
<br/> A pair of Binoculars
<br/> An Extra Grenade
<br/> A First Aid Kit
<br/> You will also get extra mags for both your Sting and ACP .45
"
]];

player createDiaryRecord ["admins",
[
"Admin List",
"
<br/><font color='#00FFEF' size='18'>Super Admins</font>
<br/><font color='#00FFEF' size='12'>All Functions Activated (No Player Markers or Invisiblilty)</font>
<br/> * Mokey
<br/> * Archangel
<br/> * TexasOutlaw
<br/> * Korimer
<br/> * Lenymo
<br/> * Ghostyy
<br/> * OutlawII
<br/> * RequiemAnarchy
<br/> * GeneralNukes

<br/><font color='#0066FF' size='18'>High Admins</font>
<br/><font color='#00FFEF' size='12'>Teleport, Spectate, Slay Delete Hacked objects</font>
<br/> * Greenmold
<br/> * ExaMpLez
<br/> * Harry
<br/> * Downey
<br/> * StinkySneeze
<br/> * Doc Whiskey

<br/><font color='#002FFF' size='18'>Low Admins</font>
<br/><font color='#00FFEF' size='12'>Spectate, Slay, Delete Hacked Objects</font>
<br/> * Magmalation
<br/> * Llama
<br/> * Shine_Dwarf
<br/> * Sugar

"
]];
