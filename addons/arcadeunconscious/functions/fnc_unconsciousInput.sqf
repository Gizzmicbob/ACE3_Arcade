#include "script_component.hpp"
/*
 * Author: Gizzmicbob
 * Enable input
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ace_arcadeunconscious_fnc_unconsciousInput
 *
 * Public: True
 */

if (GVAR(unconsciousEnableInput)) then
{
    ["unconscious", false] call ace_common_fnc_setDisableUserInputStatus;
};
