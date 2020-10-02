print("CoolDamageFont v1.0")
 
CoolDamageFont = CreateFrame("Frame", "CoolDamageFont");

local damagefont_FONT_NUMBER = "Interface\\AddOns\\CoolDamageFont\\font.ttf";

function CoolDamageFont:ApplySystemFonts()

DAMAGE_TEXT_FONT = damagefont_FONT_NUMBER;

end

CoolDamageFont:SetScript("OnEvent",
		    function() 
		       if (event == "ADDON_LOADED") then
			  CoolDamageFont:ApplySystemFonts()
		       end
		    end);
CoolDamageFont:RegisterEvent("ADDON_LOADED");

CoolDamageFont:ApplySystemFonts()