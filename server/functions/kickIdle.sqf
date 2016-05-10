if(kickIdle) then {

while {true} do {
_movement = velocity player;
sleep 600;
_movement2 = velocity player;

if(_movement == _movement2)then {
player groupchat "Idle Bot: You have 30 seconds to move before you are kicked from the server.";
player setvariable ["vector",_vector,true];
sleep 30;
_vector = player getvariable "vector";
_vector2 = velocity player;

if(_movement == _movement2)then {
format['serverCommand "#kick %1"', name player] call broadcast;
};
sleep 5;};};};