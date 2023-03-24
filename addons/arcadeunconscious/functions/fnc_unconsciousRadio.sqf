#include "script_component.hpp"
/*
 * Author: Gizzmicbob
 * Enable the radio and set the volume
 *
 * Arguments:
 * 0: The object (player) to change the volume of <OBJECT>
 * 1: The volume to set the radio to when unconscious <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, 0.5] call ace_arcadeunconscious_fnc_unconsciousRadio
 *
 * Public: True
 */

params ["_object", "_volume"];

if (["task_force_radio"] call ace_common_fnc_isModLoaded) then {
    _object setVariable ["tf_unable_to_use_radio", false, true];
    _object setVariable ["tf_globalVolume", _volume];
};
if (["acre_main"] call ace_common_fnc_isModLoaded) then { //
    _object setVariable ["acre_sys_core_isDisabledRadio", false, true];
    if (!isNil "acre_api_fnc_setGlobalVolume") then { [_volume] call acre_api_fnc_setGlobalVolume; };
};