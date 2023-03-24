#include "script_component.hpp"
/*
 * Author: Gizzmicbob
 * Enable speaking and set the volume
 *
 * Arguments:
 * 0: The object (player) to change the volume of <OBJECT>
 * 1: The volume to set speaking to when unconscious <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, 0.5] call ace_arcadeunconscious_fnc_unconsciousSpeaking
 *
 * Public: True
 */

params ["_object", "_volume"];

if (["acre_main"] call ace_common_fnc_isModLoaded) then {
    _object setVariable ["acre_sys_core_isDisabled", false, true];
    if (!isNil "acre_api_fnc_setGlobalVolume") then { [_volume] call acre_api_fnc_setGlobalVolume; };
};
if (["task_force_radio"] call ace_common_fnc_isModLoaded)  then { // call FUNC(isModLoaded)) 
    _object setVariable ["tf_voiceVolume", [1, 0] select (false), true];
    _object setVariable ["tf_globalVolume", _volume];
};