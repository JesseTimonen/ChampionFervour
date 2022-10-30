-- Import Turbine/Lotro base libraries --
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI.Lotro";


-- Import utility scripts --
import "ChampionFervour.Scripts.Utility.Class";
import "ChampionFervour.Scripts.Utility.Type";
import "ChampionFervour.Scripts.Utility.RadioButton";


-- Import scripts that are required for other scripts to work --
import "ChampionFervour.Scripts.Notification";
import "ChampionFervour.Scripts.SaveLoad";
import "ChampionFervour.Scripts.Init";


-- Make sure plugin loads only for champions --
if (Turbine.Gameplay.LocalPlayer.GetInstance():GetClass() ~= Turbine.Gameplay.Class.Champion) then
    Scripts.notification("This plugin will only work for champions! Wrong class detected, therefore the plugin has been disabled.");
    return;
end


-- Import plugin activation --
import "ChampionFervour.Scripts.Activation";


-- Import color picker --
import "ChampionFervour.Scripts.ColorPicker";


-- Import main functionality --
import "ChampionFervour.Scripts.Main";
import "ChampionFervour.Scripts.Options";