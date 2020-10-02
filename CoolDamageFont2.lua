-- Shows addon loaded in chat window.
print("CoolDamageFont v2.0")

-- Locals
local damagefont_FONT_NUMBER = "Interface\\AddOns\\CoolDamageFont\\font.ttf";

-- Code Base
CoolDamageFont2 = CreateFrame("Frame", "CoolDamageFont");

function CoolDamageFont2:ApplySystemFonts()
	DAMAGE_TEXT_FONT = damagefont_FONT_NUMBER;
end

CoolDamageFont2:SetScript("OnEvent",
	function() 
		if (event == "ADDON_LOADED") then
		CoolDamageFont2:ApplySystemFonts()
	end
end);

CoolDamageFont2:RegisterEvent("ADDON_LOADED");
CoolDamageFont2:ApplySystemFonts()