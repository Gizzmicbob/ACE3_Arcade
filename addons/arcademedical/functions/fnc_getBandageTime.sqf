#include "script_component.hpp"
/*
 * Author: Gizzmicbob
 * Calculates the time to bandage a wound
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 * 2: Body Part <STRING>
 * 3: Treatment <STRING>
 *
 * Return Value:
 * Treatment Time <NUMBER>
 *
 * Example:
 * [player, cursorTarget, "Head", "FieldDressing"] call ace_arcade_arcademedical_fnc_getBandageTime
 *
 * Public: No
 */

params ["_medic", "_patient", "_bodypart", "_bandage"];

timeToBandage = [_medic, _patient, _bodypart, _bandage] call ace_medical_treatment_fnc_getBandageTime;
if (timeToBandage == 0) then
{
    timeToBandage = 10; // while getBandageTime is meant to return a value based on various parameters, it seems to be called without params. This makes it return 0, then default to 10. Attempting to future-proof for if this is fixed
};
(timeToBandage * GVAR(medicalBandageTreatmentTime)) max GVAR(medicalBandageMinTime)