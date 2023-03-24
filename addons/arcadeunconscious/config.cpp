#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = "ACE Arcade Unconscious";
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {"ace_common", "ace_medical", "ace_medical_feedback"};
        author = "Gizzmicbob";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"