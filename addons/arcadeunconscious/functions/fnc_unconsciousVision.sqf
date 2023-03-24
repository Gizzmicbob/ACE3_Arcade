#include "script_component.hpp"
/*
 * Author: Gizzmicbob
 * Configure the post processing effects
 *
 * Arguments:
 * 0: Do we wish to reset (restore) post processing to their default settings? <BOOLEAN>
 *
 * Return Value:
 * None
 *
 * Example:
 * [false] call ace_arcadeunconscious_fnc_unconsciousVision
 *
 * Public: True
 */

params [["_reset", false]];

if (_reset) then
{
    private _fnc_createEffect = {
        params ["_type", "_layer", "_default"];

        private _effect = ppEffectCreate [_type, _layer];
        _effect ppEffectForceInNVG true;
        _effect ppEffectAdjust _default;
        _effect ppEffectCommit 0;

        _effect
    }; // duplicate of an ACE function as it's private

    ace_medical_feedback_ppUnconsciousBlur = [
        "DynamicBlur",
        814, // 135xx does not work
        [0]
    ] call _fnc_createEffect;

    ace_medical_feedback_ppUnconsciousBlackout = [
        "ColorCorrections",
        13500,
        [
            1,1,0,
            [0, 0, 0, 0],
            [1, 1, 1, 1],
            [0.299, 0.587, 0.114, 0],
            [-1, -1, 0, 0, 0, 0, 0]
        ]
    ] call _fnc_createEffect;
}
else 
{
    if (GVAR(unconsciousEnableInput)) then
    {
        ppEffectDestroy ace_medical_feedback_ppUnconsciousBlackout;
        ppEffectDestroy ace_medical_feedback_ppUnconsciousBlur;
    };
};