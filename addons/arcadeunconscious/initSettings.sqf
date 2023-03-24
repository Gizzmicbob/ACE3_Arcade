[
    QGVAR(unconsciousRadioVolume),
    "SLIDER",
    ["STR_ACE_Arcade_unconsciousRadioVolume_DisplayName", "STR_ACE_Arcade_unconsciousRadioVolume_Description"],
    "STR_ACE_Arcade_Category",
    [0, 1, 0, 2],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(unconsciousSpeakingVolume),
    "SLIDER",
    ["STR_ACE_Arcade_unconsciousSpeakingVolume_DisplayName", "STR_ACE_Arcade_unconsciousSpeakingVolume_Description"],
    "STR_ACE_Arcade_Category",
    [0, 1, 0, 2],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(unconsciousEnableInput),
    "CHECKBOX",
    ["STR_ACE_Arcade_unconsciousEnableInput_DisplayName", "STR_ACE_Arcade_unconsciousEnableInput_Description"],
    "STR_ACE_Arcade_Category",
    false,
    true
] call CBA_fnc_addSetting;

[
    QGVAR(unconsciousRemovePostProcessing),
    "CHECKBOX",
    ["STR_ACE_Arcade_unconsciousRemovePostProcessing_DisplayName", "STR_ACE_Arcade_unconsciousRemovePostProcessing_Description"],
    "STR_ACE_Arcade_Category",
    false,
    true,
    {
        params ["_value"];
        [not _value] call FUNC(unconsciousVision);
    }
] call CBA_fnc_addSetting;