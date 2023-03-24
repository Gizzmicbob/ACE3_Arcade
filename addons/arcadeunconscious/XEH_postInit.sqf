#include "script_component.hpp"

["ace_unconscious", {
    params ["_object", "_set"];

    [_object, GVAR(unconsciousRadioVolume)] call FUNC(unconsciousRadio);
    [_object, GVAR(unconsciousSpeakingVolume)] call FUNC(unconsciousSpeaking);
    [] call FUNC(unconsciousInput);
}] call CBA_fnc_addEventHandler;

["featureCamera", {
    params ["_unit", "_newCamera"];
    [] call FUNC(unconsciousInput);
}] call CBA_fnc_addPlayerEventHandler;

[] call FUNC(unconsciousVision);