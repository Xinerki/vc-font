
local Size = {
		{
			13, 12, 31, 35, 23, 35, 31,  9, 14, 15, 25, 30, 11, 17, 13, 31,
			23, 16, 22, 21, 24, 23, 23, 20, 23, 22, 10, 35, 26, 26, 26, 26,
			30, 26, 24, 23, 24, 22, 21, 24, 26, 10, 20, 26, 22, 29, 26, 25,
			24, 25, 24, 24, 22, 25, 24, 29, 29, 23, 25, 37, 22, 37, 35, 37,
			35, 21, 22, 21, 21, 22, 13, 22, 21, 10, 16, 22, 11, 32, 21, 21,
			23, 22, 16, 20, 14, 21, 20, 30, 25, 21, 21, 33, 33, 33, 33, 35,
			27, 27, 27, 27, 32, 24, 23, 23, 23, 23, 11, 11, 11, 11, 26, 26,
			26, 26, 26, 26, 26, 25, 26, 21, 21, 21, 21, 32, 23, 22, 22, 22,
			22, 11, 11, 11, 11, 22, 22, 22, 22, 22, 22, 22, 22, 26, 21, 24,
			12, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26,
			26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 18, 26, 26,
			26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26,
			20
		},

		{
			13,  9, 21, 35, 23, 35, 35, 11, 35, 35, 25, 35, 11, 17, 13, 33,
			28, 14, 22, 21, 24, 23, 23, 21, 23, 22, 10, 35, 13, 35, 13, 33,
			 5, 25, 22, 23, 24, 21, 21, 24, 24,  9, 20, 24, 21, 27, 25, 25,
			22, 25, 23, 20, 23, 23, 23, 31, 23, 23, 23, 37, 33, 37, 35, 37,
			35, 21, 19, 19, 21, 19, 17, 21, 21,  8, 17, 18, 14, 24, 21, 21,
			20, 22, 19, 20, 20, 19, 20, 26, 21, 20, 21, 33, 33, 33, 33, 35,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			16
		},

		{
			15, 14, 16, 25, 19, 26, 22, 11, 18, 18, 27, 26, 13, 19,  9, 27,
			19, 18, 19, 19, 21, 19, 20, 18, 19, 20, 12, 32, 15, 32, 15, 35,
			15, 19, 19, 19, 19, 19, 16, 19, 20,  9, 19, 20, 14, 29, 19, 19,
			19, 19, 19, 19, 21, 19, 20, 32, 20, 19, 19, 33, 31, 39, 37, 39,
			37, 21, 21, 21, 23, 21, 19, 23, 23, 10, 19, 20, 16, 26, 23, 23,
			20, 20, 20, 22, 21, 22, 22, 26, 22, 22, 23, 35, 35, 35, 35, 37,
			19, 19, 19, 19, 29, 19, 19, 19, 19, 19,  9,  9,  9,  9, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 30, 19, 19, 19, 19, 19,
			10, 10, 10, 10, 19, 19, 19, 19, 19, 19, 19, 19, 19, 23, 35, 12,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 11, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19
		}
}

local fontTxd = {
    "font2",
    "pager",
    "font1"
}

local FONT_BANK = 1
local FONT_PAGER = 2
local FONT_HEADING = 3

local SCREEN_WIDTH, SCREEN_HEIGHT = GetActiveScreenResolution()
local DEFAULT_SCREEN_WIDTH, DEFAULT_SCREEN_HEIGHT = 640, 480

local function SCREEN_STRETCH_X(a)
	return a * (SCREEN_WIDTH / DEFAULT_SCREEN_WIDTH)
end

local function SCREEN_STRETCH_Y(a)
	return a * (SCREEN_HEIGHT / DEFAULT_SCREEN_HEIGHT)
end

local function CSp2DrawRect(rect, color)
	-- TODO: adapt DrawRect to draw this
end

CFont = {}
CFont.__index = CFont

CFont.Details = {
	color = CRGBA(255, 255, 255, 255),
	scaleX = 1.0,
	scaleY = 1.0,
	slant = 0.0,
	slantRefX = 0.0,
	slantRefY = 0.0,
	justify = false,
	centre = false,
	rightJustify = false,
	background = false,
	backgroundOnlyText = false,
	proportional = false,
	alphaFade = 0.0,
	backgroundColor = CRGBA(255, 255, 255, 255),
	wrapX = 1.0,
	centreSize = 1.0,
	rightJustifyWrap = 1.0,
	style = 1,
	bank = 0,
	dropShadowPosition = 0,
	dropColor = CRGBA(0, 0, 0, 255),
}

function CFont:SetScale(x, y)
	CFont.Details.scaleX = x
	CFont.Details.scaleY = y
end

function CFont:SetSlantRefPoint(x, y)
	CFont.Details.slantRefX = x
	CFont.Details.slantRefY = y
end

function CFont:SetSlant(s)
	CFont.Details.slant = s
end

function CFont:SetJustifyOn()
	CFont.Details.justify = true
end

function CFont:SetJustifyOff()
	CFont.Details.justify = false
end

function CFont:SetRightJustifyOn()
	CFont.Details.rightJustify = true
end

function CFont:SetRightJustifyOff()
	CFont.Details.rightJustify = false
end

function CFont:SetCentreOn()
	CFont.Details.centre = true
end

function CFont:SetCentreOff()
	CFont.Details.centre = false
end

function CFont:SetWrapx(x)
	CFont.Details.wrapX = x
end

function CFont:SetCentreSize(s)
	CFont.Details.centreSize = s
end

function CFont:SetBackgroundOn()
	CFont.Details.background = true
end

function CFont:SetBackgroundOff()
	CFont.Details.background = false
end

function CFont:SetBackGroundOnlyTextOn()
	CFont.Details.backgroundOnlyText = true
end

function CFont:SetBackGroundOnlyTextOff()
	CFont.Details.backgroundOnlyText = false
end

function CFont:SetPropOn()
	CFont.Details.proportional = true
end

function CFont:SetPropOff()
	CFont.Details.proportional = false
end

function CFont:SetFontStyle(style)
	CFont.Details.style = style
end

function CFont:SetRightJustifyWrap(wrap)
	CFont.Details.rightJustifyWrap = wrap
end

function CFont:SetAlphaFade(fade)
	CFont.Details.alphaFade = fade
end

function CFont:SetDropShadowPosition(pos)
	CFont.Details.dropShadowPosition = pos
end

function CFont:SetBackgroundColor(col)
	CFont.Details.backgroundColor = col
end

function CFont:SetColor(col)
	CFont.Details.color = col
end

function CFont:SetDropColor(col)
	CFont.Details.dropColor = col
end

function CFont:Initialize()
	RequestStreamedTextureDict("fonts")
	self.SetScale(1.0, 1.0)
	self.SetSlantRefPoint(SCREEN_WIDTH, 0.0)
	self.SetSlant(0.0)
	self.SetColor(CRGBA(255, 255, 255, 0))
	self.SetJustifyOff()
	self.SetCentreOff()
	self.SetWrapx(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH))
	self.SetCentreSize(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH))
	self.SetBackgroundOff()
	self.SetBackgroundColor(CRGBA(128, 128, 128, 128))
	self.SetBackGroundOnlyTextOff()
	self.SetPropOn()
	self.SetFontStyle(FONT_BANK)
	self.SetRightJustifyWrap(0.0)
	self.SetAlphaFade(255.0)
	self.SetDropShadowPosition(0)
end

function CFont:GetCharacterSize(c)
	if (CFont.Details.proportional) then
		-- return Size[CFont.Details.style][c:byte()] * CFont.Details.scaleX
		return Size[1][192] * CFont.Details.scaleX
	else
		return Size[CFont.Details.style][192] * CFont.Details.scaleX
	end
end


-- own implementation
function CFont:GetStringWidth(s, spaces)
	if not spaces then spaces = false end
	
	local w = 0.0
	
	for i=1,#s do
		local c = s:sub(i, i)
		if (c ~= '~') then
			w = w + self.GetCharacterSize(string.char(c:byte() - string.byte(' ')))
		end
	end
	
	return w
end

function CFont:GetNextSpace(s)
	-- uhhh
	
	-- if (s == '~') then
		-- s = string.char(s:byte() + 1)
		-- while (s ~= '~') do Wait(0)
			-- s = string.char(s:byte() + 1)
		-- end
	-- end
	
	return s
end

function CFont:GetNumberLines(xstart, ystart, s)
	local n, x, y, t
	n = 0
	
	if (CFont.Details.centre or CFont.Details.rightJustify) then
		x = 0.0
	else
		x = xstart
	end
	y = ystart
	
	while s do Wait(0)
		-- local f = CFont.Details.centre and CFont.Details.centreSize or (CFont.Details.rightJustify and xstart - CFont.Details.rightJustifyWrap or CFont.Details.wrapX)
		local f = SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH)
		-- print(tostring(CFont.Details.centreSize))
		
		if (x + self:GetStringWidth(s) > f) then
			-- reached end of line
			
			if (CFont.Details.centre or CFont.Details.rightJustify) then
				x = 0.0
			else
				x = xstart
			end
			n = n + 1
			-- Why even??
			y = y + 32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY
		else
			-- still space in current line
			
			t = self:GetNextSpace(s)
			if (t:byte() == 255) then
				-- end of string
				x = x + self:GetStringWidth(s)
				n = n + 1
				s = t
			else
				x = x + self:GetStringWidth(s)
				s = string.char(t:byte()+1)
				print(s:byte())
				x = x + self.GetCharacterSize(string.char(t:byte() - string.byte(' ')))
			end
		end
	end
	
	return n
end

function CFont:GetTextRect(start, ystart, s)
	local numLines, x, y, maxlength, t
	local rect = CRect()
	
	maxlength = 0
	numLines = 0
	
	if (CFont.Details.centre or CFont.Details.rightJustify) then
		x = 0.0
	else
		x = xstart
	end
	y = ystart
	
	local xEnd = CFont.Details.centre and CFont.Details.centreSize or (CFont.Details.rightJustify and xstart - CFont.Details.rightJustifyWrap or CFont.Details.wrapX)
	
	while s do Wait(0)
		if (x + self:GetStringWidth(s) > xEnd) then
			-- reached end of line
			if (x > maxlength) then
				maxlength = x
			end
			
			if (CFont.Details.centre or CFont.Details.rightJustify) then
				x = 0.0
			else
				x = xstart
			end
			numLines = numLines + 1
			y = y + 32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY
		else
			-- still space in current line
			t = self:GetNextSpace(s)
			if (t == '\0') then
				-- end of string
				x = x + self:GetStringWidth(s)
				if (x > maxlength) then
					maxlength = x
				end
				numLines = numLines + 1
				s = t
			else
				x = x + self:GetStringWidth(s)
				x = x + self.GetCharacterSize(string.char(t:byte() - string.byte(' ')))
				s = string.char(t:byte()+1)
			end
		end
	end
	
	if (Details.centre) then
		if (Details.backgroundOnlyText) then
			rect.left = xstart - maxlength/2 - 4.0
			rect.right = xstart + maxlength/2 + 4.0
			rect.bottom = (32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY) * numLines + ystart + 2.0
			rect.top = ystart - 2.0
		else
			rect.left = xstart - CFont.Details.centreSize*0.5 - 4.0
			rect.right = xstart + CFont.Details.centreSize*0.5 + 4.0
			rect.bottom = (32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY) * numLines + ystart + 2.0
			rect.top = ystart - 2.0
		end
	else
		rect.left = xstart - 4.0
		rect.right = CFont.Details.wrapX
		-- WTF?
		rect.bottom = ystart - 4.0 + 4.0
		rect.top = (32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY) * numLines + ystart + 2.0
	end
	
	return rect
end

function DrawTexturedImVerticesClipped(count, positions, uvs, txd, txn, colors, rect)
	return Citizen.InvokeNative("DRAW_TEXTURED_IM_VERTICES_CLIPPED", string.pack("i", count), string.pack("ff", positions.x, positions.y))
end

function tempDraw(font, rect, color, u0, v0, u1, v1, u3, v3, u2, v2)
	
end

function CFont:PrintChar(x, y, c)
	if (x <= 0.0 or x > SCREEN_WIDTH or y <= 0.0 or y > SCREEN_HEIGHT) then
		return
	end
	
	local w = self:GetCharacterWidth(c) / 32.0
	local xoff = c % 16
	local yoff = c / 16
	
	if (CFont.Details.style == FONT_BANK or CFont.Details.style == FONT_HEADING) then
		if (CFont.Details.dropShadowPosition ~= 0) then
			-- TODO: draw shadow
		end
		
		-- DrawSpriteUv("fonts", fontTxd[font], x, y, width, height, u1, v1, u2, v2, 0.0, 255, 255, 255, 255)
		
		DrawSpriteUv("fonts", fontTxd[CFont.Details.Style])
	else
		-- PAGER FONT
	end
end

function CFont:PrintString2(x, y, cstart, cend, spwidth)
	local s, c, unused
	
	--[[
	for s=string.byte(cstart),string.byte(cend)do
		if (s == '~') then
			-- TODO:
			-- s = ParseToken(s, unused)
		end
		c = string.char(s:byte() - string.byte(' '))
		if (CFont.Details.slant ~= 0.0) then
			y = (CFont.Details.slantRefX - x)*CFont.Details.slant + CFont.Details.slantRefY
		end
		self.PrintChar(x, y, c)
		x = x + self.GetCharacterSize(c)
		if (c == 0) then -- space
			x = x + spwidth
		end
	end
	]]
	
	for i=1,#cstart do
		local s = cstart:sub(i, i):byte()
		local c = string.char(s - string.byte(' '))
		-- if (CFont.Details.slant ~= 0.0) then
			-- y = (CFont.Details.slantRefX - x)*CFont.Details.slant + CFont.Details.slantRefY
		-- end
		self.PrintChar(x, y, c)
		x = x + self.GetCharacterSize(c)
		if (c == 0) then -- space
			x = x + spwidth
		end
	end
end

function CFont:PrintString(xstart, ystart, s)
	local rect
	local x, y
	local start, t
	
	if (s == '*') then return end

	if (CFont.Details.background) then
		self:GetNumberLines(xstart, ystart, s)
		rect = self:GetTextRect(xstart, ystart, s)
		CSp2DrawRect(rect, CFont.Details.backgroundColor)
	end
	
	local lineLength = 0.0
	local numSpaces = 0
	local first = true
	
	if (CFont.Details.centre or CFont.Details.rightJustify) then
		x = 0.0
	else
		x = xstart
	end
	y = ystart
	start = s
	--[[
	while true do Wait(0)
		while true do Wait(0)
			while true do Wait(0)
				if (s == '\0') then return end
				-- local xend = CFont.Details.centre and CFont.Details.centreSize or (CFont.Details.rightJustify and xstart - CFont.Details.rightJustifyWrap or CFont.Details.wrapX)
				local xend = SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH)
				
				if (x + self:GetStringWidth(s) > xend and not first) then
					-- flush line
					local spaceWidth = (not CFont.Details.justify or CFont.Details.centre) and 0.0 or (CFont.Details.wrapX - lineLength) / numSpaces
					local xleft = CFont.Details.centre and xtart - x/2 or (CFont.Details.rightJustify and xstart - x or xstart)
					
					self:PrintString2(xleft, y, start, s, spaceWidth)
					
					-- reset things
					lineLength = 0.0
					numSpaces = 0
					first = true
					if (CFont.Details.centre or CFont.Details.rightJustify) then
						x = 0.0
					else
						x = xstart
					end
					y = y + 32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY
					start = s
				else
					break
				end
			end
			-- advance by one word
			t = self:GetNextSpace(s)
			
			if (t:sub(1, 1) == '\0' or t:sub(1, 1) == ' ' and t:sub(1, 1) == '\0') then
				break
			end
			
			if (not first) then
				numSpaces = numSpaces + 1
			end
			
			first = false
			
			x = x + self:GetStringWidth(s) + self.GetCharacterSize(string.char(t:byte() - string.byte(' ')))
			lineLength = x
			s = t + 1
		end
		-- print rest
		if (t:sub(1, 1) == ' ' and t:sub(2, 2) == '\0') then
			t = '\0'..t:sub(2 	)
		end
		
		x = x + self:GetStringWidth(s)
		s = t
		local xleft = CFont.Details.centre and xstart - x/s or (CFont.Details.rightJustify and xstart - x or xstart)
		
		self.PrintString2(xleft, y, start, s, 0.0)
	end
	]]
	-- print rest
	-- if (t:sub(1, 1) == ' ' and t:sub(2, 2) == '\0') then
		-- t = '\0'..t:sub(2)
	-- end
	
	x = x + self:GetStringWidth(s)
	-- s = t
	local xleft = CFont.Details.centre and xstart - x/s or (CFont.Details.rightJustify and xstart - x or xstart)
	
	self.PrintString2(xleft, y, start, s, 0.0)
end

function CFont:PrintStringFromBottom(x, y, str)
	-- y = y - (32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY) * self:GetNumberLines(x, y, str)
	y = y - (32.0 * CFont.Details.scaleY * 0.5 + 2.0 * CFont.Details.scaleY) * 1
	self:PrintString(x, y, str)
end