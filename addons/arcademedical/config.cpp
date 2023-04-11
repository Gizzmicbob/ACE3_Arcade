#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = "ACE Arcade Medical";
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {"ace_medical_treatment"};
        author = "Gizzmicbob";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "ACE_Medical_Treatment_Actions.hpp"