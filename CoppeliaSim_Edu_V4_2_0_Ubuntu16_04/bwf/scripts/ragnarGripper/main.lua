simBWF=require('simBWF')
local isCustomizationScript=sim.getScriptAttribute(sim.getScriptHandle(sim.handle_self),sim.scriptattribute_scripttype)==sim.scripttype_customizationscript

if false then -- if not sim.isPluginLoaded('Bwf') then
    function sysCall_init()
    end
else
    function sysCall_init()
        model={}
        simBWF.appendCommonModelData(model,simBWF.modelTags.RAGNARGRIPPER)
        if isCustomizationScript then
            -- Customization script
            if model.modelVersion==1 then
                require("/bwf/scripts/ragnarGripper/common")
                require("/bwf/scripts/ragnarGripper/customization_main")
                require("/bwf/scripts/ragnarGripper/customization_data")
                require("/bwf/scripts/ragnarGripper/customization_ext")
                require("/bwf/scripts/ragnarGripper/customization_dlg")

                require("/bwf/scripts/shared/pickAndPlaceSettings")
            end
        else
            -- Child script

            end
        sysCall_init() -- one of above's 'require' redefined that function
    end
end

