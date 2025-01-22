CreateThread(function()
	local font = CFont
	font:Initialize()
	
	while true do Wait(0)
		local text = "This is a CFont usage example!"
	
		font:SetPropOn()
		font:SetColor(CRGBA(240, 151, 63, 255))
		font:SetScale(SCREEN_SCALE_X(1.0), SCREEN_SCALE_Y(1.0))
		font:SetFontStyle(FONT_STANDARD)
		font:SetDropShadowPosition(2)
		font:PrintString(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(128), text)
	end
end)