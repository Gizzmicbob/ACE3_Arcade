[
    QGVAR(medicalBandageTreatmentTime),
    "SLIDER",
    ["STR_ACE_Arcade_medicalBandageTreatmentTime_DisplayName", "STR_ACE_Arcade_medicalBandageTreatmentTime_Description"],
    "STR_ACE_Arcade_Medical_Category",
    [0, 5, 1, 2, true],
    true
] call CBA_fnc_addSetting;

[
    QGVAR(medicalBandageMinTime),
    "SLIDER",
    ["STR_ACE_Arcade_medicalBandageMinTime_DisplayName", "STR_ACE_Arcade_medicalBandageMinTime_Description"],
    "STR_ACE_Arcade_Medical_Category",
    [0, 10, 2.25, 2],
    true
] call CBA_fnc_addSetting;