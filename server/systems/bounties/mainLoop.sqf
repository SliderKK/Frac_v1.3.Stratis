//	@file Name: init.sqf
//	@file Author: [s3k] Centrifugal
// Bounty system for player use.

#define bountyMissionDelayTime 20*60
#define bountyMissionColor "#0054fe"
#define subTextColor "#FFFFFF"

if (!isServer) exitWith {};

private ["_lastSystemMission","_currentTime","_IsPlayerAlive","_IsPlayerBounty","_alivePlayerCount","_players","_count","_random","_potentialPlayer","_foundPlayer","_allStoreItems","_allVehicles","_allExplosive"];

diag_log "WASTELAND SERVER - Bounty System Main Loop Started";

_allStoreItems = (call smgArray + call rifleArray + call pistolArray + call lmgArray + call launcherArray + call throwputArray + call accessoriesArray + call headArray + call uniformArray + call vestArray + call backpackArray + call genItemArray);
_allVehicles = (call boatsArray + call planesArray + call helicoptersArray + call tanksArray + call armoredArray + call landArray + call staticGunsArray);
_allExplosive = (call throwputArray);

sleep 30;
_lastSystemMission = floor(time);

[
		format
		[
			"<t color='%1' shadow='2' size='1.75'>%2 Objective%3</t><br/>" +
			"<t color='%1'>------------------------------</t><br/>" +
			"<t color='%4' size='1.0'>Starting in %5 minutes</t>",
			bountyMissionColor,
			'Bounty',
			'',
			subTextColor,
			bountyMissionDelayTime / 60
		]
] call hintBroadcast;


while {true} do
{
	sleep 30;
	_currentTime = floor(time);
	private ["_dequeuedBounties","_threatPlayers","_highestThreatCost","_mediumThreshold","_highThreshold","_playerCount"];
	_highestThreatCost = 0;
	_dequeuedBounties = [];
	_threatPlayers = [];
	_players = playableUnits;
	{
	
		private ["_currentPlayerUID","_items","_itemsCost","_primaryWeapon","_secondaryWeapon","_handgunWeapon","_primaryWeaponItems","_secondaryWeaponItems","_handgunWeaponItems","_vest","_backpack","_uniform","_headgear","_goggles","_nvgs","_vehicle","_vehicleItems","_vehicleType","_gps","_uav","_uavType","_mines","_isNewConnect"];
		
		
		
		
		_vehicleItems = [];
		
		_itemsCost = 0;
		_currentPlayerUID = getPlayerUID _x;
		_items = items _x;
		_primaryWeapon = primaryWeapon _x;
		_secondaryWeapon = secondaryWeapon _x;
		_handgunWeapon = handgunWeapon _x;
		_vest = vest _x;
		_backpack = backpack _x;
		_uniform = uniform _x;
		_goggles = goggles _x;
		_headgear = headgear _x;
		_nvgs = hmd _x;
		//_gps = hmd _x;
		
		_uav = getConnectedUAV _x;
		
		_vehicle = vehicle _x;
		
		_mines = getAllOwnedMines _x;
		
		
		
		_isNewConnect =  _x getVariable ["isNewConnect", true];
		
		if(_isNewConnect) then
		{
			_x setVariable["isNewConnect", false, true];
			
			private ["_bountydisconnect","_result"];

			_bountydisconnect = 0;
			if(!isNil "_currentPlayerUID") then
			{
				_result = ([format ["checkPlayerBountyDisconnect:%1:%2:%3", 1 , 1, _currentPlayerUID],2] call extDB_Database_async) select 0;
				diag_log format["WASTELAND SERVER - Bounty Disconnect Result '%1' Player - '%2'", _result, _currentPlayerUID];
				_bountydisconnect = _result;
			};

			if(_bountydisconnect > 0) then
			{
				pvar_BountySystemReconnects = pvar_BountySystemReconnects + [_currentPlayerUID];
				diag_log format["WASTELAND SERVER - Bounty Reconnected '%1'", _currentPlayerUID];
			};
			
		};
		
		
		if(!(isNull _uav)) then
		{	
		
			_uavType = typeOf _uav;
			
			{
				private ["_storeItemName","_storeItemPrice"];
				_storeItemName = _x select 1;
				_storeItemPrice = _x select 2;
				
				if(_uavType == _storeItemName) then
				{
					_itemsCost = _itemsCost + _storeItemPrice;
				};
				
				
			}foreach _allVehicles;
			
		};
		
		if(_vehicle != _x) then
		{	
			_vehicleItems = items _vehicle;
			_vehicleType = typeOf _vehicle;
			
			{
				if(_x != "") then
				{
					_items = _items + [_x];
				}
			}foreach _vehicleItems;
			
			{
				private ["_storeItemName","_storeItemPrice"];
				_storeItemName = _x select 1;
				_storeItemPrice = _x select 2;
				
				if(_vehicleType == _storeItemName) then
				{
					_itemsCost = _itemsCost + _storeItemPrice;
				};
				
				
			}foreach _allVehicles;
			
		};
		
		if(_vest != "") then
		{
			_items = _items + [_vest];
		};
		
		if(_nvgs != "") then
		{
			_items = _items + [_nvgs];
		};
		
		if(_goggles != "") then
		{
			_items = _items + [_goggles];
		};
		
		if(_headgear != "") then
		{
			_items = _items + [_headgear];
		};
		
		if(_backpack != "") then
		{
			_items = _items + [_backpack];
		};
		
		if(_uniform != "") then
		{
			_items = _items + [_uniform];
		};
		
		if(_primaryWeapon != "") then
		{
			_items = _items + [_primaryWeapon];
			_primaryWeaponItems = primaryWeaponItems _x;
			{
				if(_x != "") then
				{
					_items = _items + [_x];
				}
			}foreach _primaryWeaponItems;
		};
		
		if(_secondaryWeapon != "") then
		{
			_items = _items + [_secondaryWeapon];
			_secondaryWeaponItems = secondaryWeaponItems _x;
			{
				if(_x != "") then
				{
					_items = _items + [_x];
				}
			}foreach _secondaryWeaponItems;
		};
		
		if(_handgunWeapon != "") then
		{
			_items = _items + [_handgunWeapon];
			_handgunWeaponItems = handgunItems _x;
			{
				if(_x != "") then
				{
					_items = _items + [_x];
				}
			}foreach _handgunWeaponItems;
		};
		
		{
			if(_currentPlayerUID == _x) then
			{
				_dequeuedBounties = _dequeuedBounties + [_x];
				[_x,'COWARD'] execVM format ["server\systems\bounties\playerLoop.sqf"];
			};
		}foreach pvar_BountySystemReconnects;
		
		
		{
			private ["_currentItemName"];
			_currentItemName = typeOf _x;
			
			{
				private ["_storeItemName","_storeItemPrice"];
				_storeItemName = _x select 1;
				_storeItemPrice = _x select 2;
				
				if(_currentItemName == _storeItemName) then
				{
					_itemsCost = _itemsCost + _storeItemPrice;
				};
				
				
			}foreach _allExplosive;
			
			//diag_log format["ITEM NAME: '%1'", _x];
			
		}foreach _mines;
		
		
		
		
		{
			private ["_currentItemName"];
			_currentItemName = _x;
			
			{
				private ["_storeItemName","_storeItemPrice"];
				_storeItemName = _x select 1;
				_storeItemPrice = _x select 2;
				
				if(_currentItemName == _storeItemName) then
				{
					_itemsCost = _itemsCost + _storeItemPrice;
				};
				
				
			}foreach _allStoreItems;
			
			//diag_log format["ITEM NAME: '%1'", _x];
			
		}foreach _items;
		
		//diag_log format["WASTELAND SERVER - Threat Level Result '%1' Player - '%2'", _itemsCost, _currentPlayerUID];
		
		private ["_randomThreatCost","_totalThreatPotential"];
		_randomThreatCost = random _itemsCost;
		_totalThreatPotential = _randomThreatCost + _itemsCost;
		
		_threatPlayers = _threatPlayers + [[_totalThreatPotential ,_x]];
		
		if(_totalThreatPotential > _highestThreatCost) then
		{
			_highestThreatCost = _totalThreatPotential
		};
		
		
		_x setVariable ["threatlevel", _itemsCost, true];
		//_x setVariable ["threatrank", _itemsCost, true];
		
	}foreach _players;

	
	_mediumThreshold = _highestThreatCost * 0.5;
	_highThreshold = _highestThreatCost * 0.75;
	
	_threatPlayers sort false;
	
	private ["_threatLevelCounter"];
	_threatLevelCounter = 1;
	{
		private ["_player","_currentThreatPotential"];
		_player = _x select 1;
		_currentThreatPotential = _x select 0;
		
		if(_currentThreatPotential >=  _highThreshold)then
		{
			_player setVariable ["threatrank", "High Threat", true];
		}
		else
		{
			if(_currentThreatPotential >=  _mediumThreshold)then
			{
				_player setVariable ["threatrank", "Medium Threat", true];
			}
			else
			{
				_player setVariable ["threatrank", "Low Threat", true];
			};
		};
		
		//_player setVariable ["threatrank", _threatLevelCounter, true];
		_threatLevelCounter = _threatLevelCounter + 1;
	}foreach _threatPlayers;
	
	pvar_BountySystemReconnects = [];
	_dequeuedBounties = [];

	_playerCount = count allPlayers;
	
	if ((_currentTime - _lastSystemMission >= bountyMissionDelayTime) && (_playerCount > 10)) then 
	{ 
			_lastSystemMission = floor(time);
	
			_foundPlayer = nil;
			_IsPlayerAlive = false;
			_IsPlayerBounty = false;
			
			_players = playableUnits;
			_count = count _players;
			
			_alivePlayerCount = 0;
			for "_x" from 0 to (_count - 1) do {
				_p = _players select _x;
				if (alive _p) then {
					_alivePlayerCount = _alivePlayerCount + 1;
				};
			};

			
			if (_alivePlayerCount == 0) exitWith {};

			// Keep looping over players until we find an alive one
			
			private ["_threatCounter","_threatTotalCount"];
			_threatCounter = 0;
			_threatTotalCount = count _threatPlayers;
			
			if (_threatTotalCount == 0) exitWith {};
			
			while {true} do {
			
				if(_threatCounter >= _threatTotalCount)  exitWith {};
			
				//_random = floor(random _count);
				//_potentialPlayer = _players select _random;
				private ["_threatPlayer"];
				_threatPlayer = _threatPlayers select _threatCounter;
				_potentialPlayer = _threatPlayer select 1;
				
				
				if (alive _potentialPlayer) then {
					_foundPlayer = _potentialPlayer;
					_IsPlayerAlive = true;
				};

				{
					if(getPlayerUID _foundPlayer == _x) then
					{
						_IsPlayerBounty = true;
					};
				}foreach pvar_BountySystemActiveTargets;
				
				if(_IsPlayerAlive && (!_IsPlayerBounty)) exitWith {};	
				
				_threatCounter = _threatCounter + 1;
			};
	
			if(!isnil "_foundPlayer") then
			{
				[getPlayerUID _foundPlayer,'SYSTEM'] execVM format ["server\systems\bounties\playerLoop.sqf"];
			};
	};
	
};

