local f = CreateFrame("Frame", "FPSAlways_Frame", UIParent)
f:RegisterEvent("ADDON_LOADED")

local function FPSAlways_Frame_OnEvent(self, event, ...)		
	if event == "ADDON_LOADED" then
		if FPSAlways_ToggleOnce == nil then
			ToggleFramerate() 
			FPSAlways_ToggleOnce = 1
		end
	end
end

f:SetScript("OnEvent", FPSAlways_Frame_OnEvent)