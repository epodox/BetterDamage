-- Shows addon loaded in chat window.
print("BetterDamage Loaded")

-- Locals
local damagefont_FONT_NUMBER = "Interface\\AddOns\\BetterDamage\\Fonts\\font.ttf";

-- Code Base
BetterDamage = CreateFrame("Frame", "BetterDamage");

function BetterDamage:ApplySystemFonts()
	DAMAGE_TEXT_FONT = damagefont_FONT_NUMBER;
end

BetterDamage:SetScript("OnEvent",
	function() 
		if (event == "ADDON_LOADED") then
		BetterDamage:ApplySystemFonts()
	end
end);

BetterDamage:RegisterEvent("ADDON_LOADED");
BetterDamage:ApplySystemFonts()