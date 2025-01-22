
function DrawGameText(x, y, text, r, g, b, a, scaleX, scaleY)
	-- SetTextFont(font)
	-- SetTextProportional(1)
	-- SetTextScale(scaleX, scaleY)
	-- SetTextColour(r, g, b, a)
	-- SetTextOutline()
	-- SetTextEntry("STRING")
	-- SetTextCentre(0)
	-- AddTextComponentString(tostring(text))
	
	-- SetTextFont(13)
	SetTextProportional(1)
	SetTextScale(scaleX, scaleY)
	SetTextColour(r, g, b, a)
	-- SetTextDropshadow(0, 0, 0, 0, 255)
	-- SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	-- SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(tostring(text))
	DrawText(x, y)
end

function mid(x1, x2)
	return x1 + (x2 - x1) * 0.5
end

function CSprite2d(texdir)
	sprite = {}
	sprite.__index = sprite
	sprite.m_pTexture = nil
	sprite.m_pTextureDir = texdir or "hud_vc"

	function sprite:SetTexture(name)
		self.m_pTexture = name
	end

	function sprite:Draw(rect, color, u0, v0, u1, v1, u3, v3, u2, v2)
		local x = mid(rect.left, rect.right) / SCREEN_WIDTH
		local y = mid(rect.top, rect.bottom) / SCREEN_HEIGHT
		
		local w = (rect.right - rect.left) / SCREEN_WIDTH
		local h = (rect.bottom - rect.top) / SCREEN_HEIGHT
		
		-- x = x+(w/2)
		-- y = y+(h/2)
		
		-- local dbg = string.format("%f - %f - %f - %f\n%f - %f - %f - %f", x, y, w, h, rect.left, rect.top, rect.right, rect.bottom)
		-- DrawGameText(0.5, 0.25, dbg, 255, 255, 255, 255, 1.0, 1.0)
		
		if u0 and v0 and u1 and v1 and u3 and v3 and u2 and v2 then
			return DrawSpriteUv(self.m_pTextureDir, self.m_pTexture, x, y, w, h, u0, v0, u2, v2, 0, color.r, color.g, color.b, color.a)
		else
			return DrawSprite(self.m_pTextureDir, self.m_pTexture, x, y, w, h, 0, color.r, color.g, color.b, color.a)
		end
	end
	
	function sprite:DrawRect(r, col)
		local x = mid(r.left, r.right) / SCREEN_WIDTH
		local y = mid(r.top, r.bottom) / SCREEN_HEIGHT
		
		local w = (r.right - r.left) / SCREEN_WIDTH
		local h = (r.bottom - r.top) / SCREEN_HEIGHT
		
		return DrawRect(x, y, w, h, col.r, col.g, col.b, col.a)
	end

	return sprite
end