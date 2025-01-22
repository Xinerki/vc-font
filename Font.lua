local Size = {
		-- {
			-- 13, 12, 31, 35, 23, 35, 31,  9, 14, 15, 25, 30, 11, 17, 13, 31,
			-- 23, 16, 22, 21, 24, 23, 23, 20, 23, 22, 10, 35, 26, 26, 26, 26,
			-- 30, 26, 24, 23, 24, 22, 21, 24, 26, 10, 20, 26, 22, 29, 26, 25,
			-- 24, 25, 24, 24, 22, 25, 24, 29, 29, 23, 25, 37, 22, 37, 35, 37,
			-- 35, 21, 22, 21, 21, 22, 13, 22, 21, 10, 16, 22, 11, 32, 21, 21,
			-- 23, 22, 16, 20, 14, 21, 20, 30, 25, 21, 21, 33, 33, 33, 33, 35,
			-- 27, 27, 27, 27, 32, 24, 23, 23, 23, 23, 11, 11, 11, 11, 26, 26,
			-- 26, 26, 26, 26, 26, 25, 26, 21, 21, 21, 21, 32, 23, 22, 22, 22,
			-- 22, 11, 11, 11, 11, 22, 22, 22, 22, 22, 22, 22, 22, 26, 21, 24,
			-- 12, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26,
			-- 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 18, 26, 26,
			-- 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26,
			-- 20
		-- },

		-- {
			-- 13,  9, 21, 35, 23, 35, 35, 11, 35, 35, 25, 35, 11, 17, 13, 33,
			-- 28, 14, 22, 21, 24, 23, 23, 21, 23, 22, 10, 35, 13, 35, 13, 33,
			 -- 5, 25, 22, 23, 24, 21, 21, 24, 24,  9, 20, 24, 21, 27, 25, 25,
			-- 22, 25, 23, 20, 23, 23, 23, 31, 23, 23, 23, 37, 33, 37, 35, 37,
			-- 35, 21, 19, 19, 21, 19, 17, 21, 21,  8, 17, 18, 14, 24, 21, 21,
			-- 20, 22, 19, 20, 20, 19, 20, 26, 21, 20, 21, 33, 33, 33, 33, 35,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 16
		-- },

		-- {
			-- 15, 14, 16, 25, 19, 26, 22, 11, 18, 18, 27, 26, 13, 19,  9, 27,
			-- 19, 18, 19, 19, 21, 19, 20, 18, 19, 20, 12, 32, 15, 32, 15, 35,
			-- 15, 19, 19, 19, 19, 19, 16, 19, 20,  9, 19, 20, 14, 29, 19, 19,
			-- 19, 19, 19, 19, 21, 19, 20, 32, 20, 19, 19, 33, 31, 39, 37, 39,
			-- 37, 21, 21, 21, 23, 21, 19, 23, 23, 10, 19, 20, 16, 26, 23, 23,
			-- 20, 20, 20, 22, 21, 22, 22, 26, 22, 22, 23, 35, 35, 35, 35, 37,
			-- 19, 19, 19, 19, 29, 19, 19, 19, 19, 19,  9,  9,  9,  9, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 30, 19, 19, 19, 19, 19,
			-- 10, 10, 10, 10, 19, 19, 19, 19, 19, 19, 19, 19, 19, 23, 35, 12,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 11, 19, 19, 19,
			-- 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			-- 19
		-- }
		
		{
			--FONT2 EFIGS
			--SPC,!,         $,  %,  &,  ',  [,  ],      +,  ,   -,  .,    
			12, 9,  22, 17, 19, 19, 25, 4,  33, 33, 25, 35, 11, 10,  6, 33,
			--0, 1,  2,  3,  4,  5,  6,  7,  8,  9,  :,                 ??,
			18, 10, 17, 17, 17, 17, 17, 15, 12, 16,  5, 30, 30, 30, 30, 30,
			--   A,  B,  C,  D,  E,  F,  G,  H,  I,  J,  K,  L,  M,  N,  O,
			12, 16, 19, 16, 19, 18, 18, 17, 22, 11, 17, 18, 18, 30, 22, 19,
			--P, Q,  R,  S,  T,  U,  V,  W,  X,  Y,  Z, ??, ??, ??,  ,  \,
			22, 19, 19, 20, 18, 19, 19, 29, 19, 18, 19, 19, 33, 33, 10, 19,
			--??,a,  b,  c,  d,  e,  f,  g,  h,  i,  j,  k,  l,  m,  n,  o,
			12, 14, 11, 11, 16, 11, 12, 14, 14, 10, 13, 12, 10, 19, 18, 12,
			--p, q,  r,  s,  t,  u,  v,  w,  x,  y,  z, ??, ??, ??, ??, ??,
			16, 13, 13, 11, 12, 15, 12, 15, 13, 12, 12, 37, 33, 37, 35, 37,
			--Ą, Į,  Ā,  Ä,  Ę,  Ē,  Č,  É,  Ź,  Ė,  Ģ,  Ķ,  Ī,  Ļ,  Ņ,  Ó,
			16, 16, 16, 16, 33, 17, 18, 18, 18, 18, 11, 11, 11, 11, 19, 19,
			--Ō, Ö,  Ł,  Ś,  Ū,  Ü,  ß,  ą,  į,  ā,  ä,  ę,  ē,  č,  é,  ź,
			19, 19, 19, 19, 19, 19, 15, 14, 14, 14, 14, 20, 14, 11, 11, 11,
			--ė, ģ,  ķ,  ī,  ļ,  ņ,  ó,  ō,  ö,  ł,  ś,  ū,  ü,  Ń,  ń,  æ,
			11, 10, 10, 10, 10, 12, 12, 12, 12, 15, 15, 15, 15, 22, 18, 21,
			--i,BLANKS
			10, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19,
			--space, unprop
			19, 16
		},
		{
			--FONT1 EFIGS
			--Characters with a '2' refer to the Pricedown font.
			--Characters that are referred as '*I' are characters that contain icons for PS2/XBOX, but contain regular characters on PC
			--in order to display them properly in the Keyboard controls menu.
			--!2,!, *I,(R),  $,  %,  &,  ',  [,  ], *I,  +,  ,   -,  ., *I,
			15,  7, 31, 25, 20, 23, 21,  7, 11, 10, 26, 14,  6, 12,  6, 26,
			--0, 1,  2,  3,  4,  5,  6,  7,  8,  9,  :, *I, *I, *I, *I,  ?,
			20,  7, 20, 20, 21, 20, 20, 19, 21, 20,  8, 30, 24, 30, 24, 19,
			--TM,A,  B,  C,  D,  E,  F,  G,  H,  I,  J,  K,  L,  M,  N,  O,
			20, 22, 22, 21, 22, 18, 18, 22, 22,  9, 14, 21, 18, 27, 21, 24,
			--P, Q,  R,  S,  T,  U,  V,  W,  X,  Y,  Z, *I,  \, *I,  ,  °,
			22, 22, 23, 20, 19, 23, 22, 31, 23, 23, 21, 25, 13, 30,  7, 19,
			--(C),a, b,  c,  d,  e,  f,  g,  h,  i,  j,  k,  l,  m,  n,  o,
			10, 17, 17, 16, 17, 17, 11, 17, 17,  7,  7, 18,  7, 25, 17, 17,
			--p, q,  r,  s,  t,  u,  v,  w,  x,  y,  z, *I, *I, $2, (2, )2,
			17, 17, 11, 17, 11, 17, 18, 25, 19, 18, 17, 28, 26, 20, 15, 15,
			--Ą, Į,  Ā,  Ä,  Ę,  Ē,  Č,  É,  Ź,  Ė,  Ģ,  Ķ,  Ī,  Ļ,  Ņ,  Ó,
			20, 20, 20, 20, 29, 22, 19, 19, 19, 19,  9,  9,  9,  9, 23, 23,
			--Ō, Ö,  Ł,  Ś,  Ū,  Ü,  ß,  ą,  į,  ā,  ä,  ę,  ē,  č,  é,  ź,
			23, 23, 24, 24, 24, 24, 20, 19, 17, 17, 17, 30, 16, 17, 17, 17,
			--ė, ģ,  ķ,  ī,  ļ,  ņ,  ó,  ō,  ö,  ł,  ś,  ū,  ü,  Ń,  ń,  æ,
			17, 11, 11, 15, 12, 17, 17, 17, 17, 17, 17, 17, 17, 21, 17, 19,
			--02,12,22, 32, 42, 52, 62, 72, 82, 92, :2, A2, B2, C2, D2, E2,
			20, 18, 19, 19, 21, 19, 19, 19, 19, 19, 16, 19, 19, 19, 20, 19,
			--F2,G2,H2, I2, J2, K2, L2, M2, N2, O2, P2, Q2, R2, S2, T2, U2,
			16, 19, 19,  9, 19, 20, 14, 29, 19, 19, 19, 19, 19, 19, 21, 19,
			--V2,W2,X2, Y2, Z2, Ą2, Į2, Ā2, Ä2, Ę2, Ē2, Č2, É2, Ź2, Ė2, Ģ2,
			20, 32, 20, 19, 19, 19, 19, 19, 19, 29, 19, 19, 19, 19, 19,  9,
			--Ķ2,Ī2,Ļ2, Ņ2, Ó2, Ō2, Ö2, Ł2, Ś2, Ū2, Ü2, ß2, Ń2, æ2, '2, .2,
			 9,  9,  9, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 10,  9,
			--space, unprop
			10, 20
		}
}

local fontTxd = {
    "font2",
    -- "pager",
    "font1",
}

local fontBatches = {}

local function NewFontBatch(txn)
	local FontBatch = {
		positions = string.blob(64 * 1024),
		uvs = string.blob(64 * 1024),
		colors = string.blob(64 * 1024),
		count = 0
	}

	function FontBatch:AddDraw(x, y, w, h, u1, v1, u2, v2, c)
		x = x * SCREEN_WIDTH
		w = w * SCREEN_WIDTH
		h = h * SCREEN_HEIGHT
		y = y * SCREEN_HEIGHT

		self.positions = self.positions:blob_pack(1 + self.count * 8, 'ffffffffffff',
			x, y,
			x + w, y,
			x, y + h,
			x + w, y,
			x, y + h,
			x + w, y + h)

		self.uvs = self.uvs:blob_pack(1 + self.count * 8, 'ffffffffffff',
			u1, v1,
			u2, v1,
			u1, v2,
			u2, v1,
			u1, v2,
			u2, v2)

		self.colors = self.colors:blob_pack(1 + self.count * 4, 'I4I4I4I4I4I4', c, c, c, c, c, c)

		self.count += 6
	end

	-- function FontBatch:AddDraw2(x, y, w, h, u0, v0, u1, v1, u3, v3, u2, v2, c)
		-- x = x * SCREEN_WIDTH
		-- w = w * SCREEN_WIDTH
		-- h = h * SCREEN_HEIGHT
		-- y = y * SCREEN_HEIGHT

		-- self.positions = self.positions:blob_pack(1 + self.count * 8, 'ffffffffffff',
			-- x, y,
			-- x + w, y,
			-- x, y + h,
			-- x + w, y,
			-- x, y + h,
			-- x + w, y + h)

		-- self.uvs = self.uvs:blob_pack(1 + self.count * 8, 'ffffffffffff',
			-- u0, v0,
			-- u1, v1,
			-- u3, v3,
			-- u2, v2,
			-- u1, v2,
			-- u0, v0)

		-- self.colors = self.colors:blob_pack(1 + self.count * 4, 'I4I4I4I4I4I4', c, c, c, c, c, c)

		-- self.count += 6
	-- end

	function FontBatch:Draw()
		Citizen.InvokeNative(`DRAW_TEXTURED_IM_VERTICES` & 0xFFFFFFFF, self.count, self.positions, self.uvs, 'fonts', txn, self.colors)
		self.count = 0
	end

	return FontBatch
end

for key, val in pairs(fontTxd) do
	fontBatches[key] = NewFontBatch(val)
end

local widescreen_fix = true
local wsfixstyle = false

-- FONT_BANK = 1
-- FONT_PAGER = 2
-- FONT_HEADING = 3

FONT_BANK = 1
FONT_STANDARD = 2
FONT_HEADING = 3

SCREEN_ASPECT_RATIO = 4/3
DEFAULT_SCREEN_WIDTH, DEFAULT_SCREEN_HEIGHT = 640, 480
SCREEN_WIDTH, SCREEN_HEIGHT = GetActiveScreenResolution()
DEFAULT_ASPECT_RATIO = 4/3

if widescreen_fix then
	SCREEN_ASPECT_RATIO = GetAspectRatio()

	if wsfixstyle then
		SCREEN_ASPECT_RATIO = DEFAULT_ASPECT_RATIO
		DEFAULT_SCREEN_WIDTH, DEFAULT_SCREEN_HEIGHT = 1280, 720
	end
end

local SCREEN_ASPECT_RATIO = SCREEN_ASPECT_RATIO
local DEFAULT_SCREEN_WIDTH, DEFAULT_SCREEN_HEIGHT = DEFAULT_SCREEN_WIDTH, DEFAULT_SCREEN_HEIGHT
local SCREEN_WIDTH, SCREEN_HEIGHT = SCREEN_WIDTH, SCREEN_HEIGHT

-- SCREEN_ASPECT_RATIO = DEFAULT_ASPECT_RATIO

function SCREEN_STRETCH_X(a)
	return a * (SCREEN_WIDTH / DEFAULT_SCREEN_WIDTH)
end

function SCREEN_STRETCH_Y(a)
	return a * (SCREEN_HEIGHT / DEFAULT_SCREEN_HEIGHT)
end

function SCREEN_SCALE_AR(a)
	return ((a) * DEFAULT_ASPECT_RATIO / SCREEN_ASPECT_RATIO)
end

function SCREEN_SCALE_X(a)
	return SCREEN_SCALE_AR(SCREEN_STRETCH_X(a))
end

function SCREEN_SCALE_Y(a)
	return SCREEN_STRETCH_Y(a)
end

function SCREEN_SCALE_FROM_RIGHT(a)
	return (SCREEN_WIDTH - SCREEN_SCALE_X(a))
end

function SCREEN_SCALE_FROM_BOTTOM(a)
	return (SCREEN_HEIGHT - SCREEN_SCALE_Y(a))
end

function SCREEN_SCALE_X_FIX(a)
	if widescreen_fix then
		return SCREEN_SCALE_X(a)
	else
		return a
	end
end

function SCREEN_SCALE_Y_FIX(a)
	if widescreen_fix then
		return SCREEN_SCALE_Y(a)
	else
		return a
	end
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
	bIsShadow = false,
	bFlash = false,
	bBold = false,
	alphaFade = 0.0,
	backgroundColor = CRGBA(255, 255, 255, 255),
	wrapX = 1.0,
	centreSize = 1.0,
	rightJustifyWrap = 1.0,
	style = 1,
	bFontHalfTexture = false,
	bank = 0,
	dropShadowPosition = 0,
	dropColor = CRGBA(0, 0, 0, 255),
	bFlashState = false,
	nFlashtimer = 0,
	anonymous_23 = false,
	anonoymous_25 = 0
}

function CFont:SetScale(x, y)
	self.Details.scaleX = x
	self.Details.scaleY = y
end

function CFont:SetSlantRefPoint(x, y)
	self.Details.slantRefX = x
	self.Details.slantRefY = y
end

function CFont:SetSlant(s)
	self.Details.slant = s
end

function CFont:SetJustifyOn()
	self.Details.justify = true
end

function CFont:SetJustifyOff()
	self.Details.justify = false
end

function CFont:SetRightJustifyOn()
	self.Details.rightJustify = true
end

function CFont:SetRightJustifyOff()
	self.Details.rightJustify = false
end

function CFont:SetCentreOn()
	self.Details.centre = true
end

function CFont:SetCentreOff()
	self.Details.centre = false
end

function CFont:SetWrapx(x)
	self.Details.wrapX = x
end

function CFont:SetCentreSize(s)
	self.Details.centreSize = s
end

function CFont:SetBackgroundOn()
	self.Details.background = true
end

function CFont:SetBackgroundOff()
	self.Details.background = false
end

function CFont:SetBackGroundOnlyTextOn()
	self.Details.backgroundOnlyText = true
end

function CFont:SetBackGroundOnlyTextOff()
	self.Details.backgroundOnlyText = false
end

function CFont:SetPropOn()
	self.Details.proportional = true
end

function CFont:SetPropOff()
	self.Details.proportional = false
end

function CFont:SetFontStyle(style)
	-- self.Details.style = style
	if (style == FONT_HEADING) then
		self.Details.style = FONT_STANDARD
		self.Details.bFontHalfTexture = true
	else
		self.Details.style = style
		self.Details.bFontHalfTexture = false
	end
end

function CFont:SetRightJustifyWrap(wrap)
	self.Details.rightJustifyWrap = wrap
end

function CFont:SetAlphaFade(fade)
	self.Details.alphaFade = fade
end

function CFont:SetDropShadowPosition(pos)
	self.Details.dropShadowPosition = pos
end

function CFont:SetBackgroundColor(col)
	self.Details.backgroundColor = col
end

function CFont:SetColor(col)
	self.Details.color = col
end

function CFont:SetDropColor(col)
	self.Details.dropColor = col
end

function CFont:Initialize()
	RequestStreamedTextureDict("fonts")
	self:SetScale(1.0, 1.0)
	self:SetSlantRefPoint(SCREEN_WIDTH, 0.0)
	self:SetSlant(0.0)
	self:SetColor(CRGBA(255, 255, 255, 0))
	self:SetJustifyOff()
	self:SetCentreOff()
	self:SetWrapx(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH))
	self:SetCentreSize(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH))
	self:SetBackgroundOff()
	self:SetBackgroundColor(CRGBA(128, 128, 128, 128))
	self:SetBackGroundOnlyTextOff()
	self:SetPropOn()
	self:SetFontStyle(FONT_BANK)
	self:SetRightJustifyWrap(0.0)
	self:SetAlphaFade(255.0)
	self:SetDropShadowPosition(0)
end

function CFont:FindNewCharacter(c)
	if (c >= 16 and c <= 26) then return c + 128 end
	-- if (c >= 8 and c <= 9) then return c + 86 end
	if (c == 4) then return c + 89 end
	if (c == 7) then return 206 end
	if (c == 14) then return 207 end
	if (c >= 33 and c <= 58) then return c + 122 end
	if (c >= 65 and c <= 90) then return c + 90 end
	if (c >= 96 and c <= 118) then return c + 85 end
	if (c >= 119 and c <= 140) then return c + 62 end
	if (c >= 141 and c <= 142) then return 204 end
	if (c == 143) then return 205 end
	if (c == 1) then return 208 end
	return c
end

function CFont:GetCharacterSize(c)
	if (self.Details.bFontHalfTexture) then
		c = self:FindNewCharacter(c)
	end
	if (self.Details.proportional) then
		return Size[self.Details.style][c] * self.Details.scaleX
	else
		return Size[self.Details.style][210] * self.Details.scaleX
	end
end

function CFont:GetCharacterWidth(c)
	if (self.Details.proportional) then
		return Size[self.Details.style][c] 
	else
		return Size[self.Details.style][210]
	end
end

function CFont:GetNumberLines(xstart, ystart, s)
	return 1.0 -- Source(s): dude trust me
end

local space = string.byte(' ')

function CFont:GetStringWidth(s, spaces)
	if not spaces then spaces = false end
	
	local w = 0.0
	
	for i=1,#s do
		local c = s:byte(i)
		-- if (c ~= '~') then
			w = w + self:GetCharacterSize(c - (space - 1))
		-- end
	end
	
	return w
end

function GetCharXOffset(char)
    local column = (char-1 % 16)
    return column * 32
end

function CFont:PrintChar(x, y, c)
	local bDontPrint = false

	local width, height, u0, v0, u1, v1, u2, v2, u3, v3
	-- local c = str:byte(i) - 31
	local row = math.floor((c-1)/16)
	local vOffset = (row*40)
	
	bDontPrint = c == 1
	local w = self:GetCharacterWidth(c) / 32.0
	local xoff = (c-1) % 16
	local yoff = math.floor((c-1) / 16)
	
	-- local width = 32.0 * self.Details.scaleX * 1.0 
	-- local height = 40.0 * self.Details.scaleY * 0.5
	
	if (self.Details.style == FONT_BANK or self.Details.style == FONT_STANDARD) then
		if (bDontPrint) then return end
		if (self.Details.slant == 0.0) then
			if (c < 192) then
				width = 32.0 * self.Details.scaleX * 1.0 
				height = 40.0 * self.Details.scaleY * 0.5
				
				u1 = xoff / 16.0
				v1 = yoff / 12.8 + 0.0021
				u2 = (xoff + 1.0) / 16.0 - 0.001
				v2 = (yoff + 1.0) / 12.8 - 0.0021
			else
				width = 32.0 * self.Details.scaleX * 1.0 
				height = 33.0 * self.Details.scaleY * 0.5
				
				u1 = xoff / 16.0
				v1 = yoff / 12.8 + 0.0021
				u2 = (xoff + 1.0) / 16.0 - 0.001
				v2 = (yoff + 1.0) / 12.8 - 0.0017
			end
		else
			width = 32.0 * self.Details.scaleX * 1.0
			height = 40.0 * self.Details.scaleY * 0.5
			
			u1 = xoff / 16.0
			v1 = yoff / 12.8 + 0.00055
			u2 = (xoff + 1.0) / 16.0 - 0.001
			v2 = (yoff + 1.0) / 12.8 - 0.009
		
			-- u0, v0 = xoff / 16.0, yoff / 12.8 + 0.00055
			-- u1, v1 = (xoff + 1.0) / 16.0 - 0.001, yoff / 12.8 + 0.021 + 0.01
			-- u3, v3 = xoff / 16.0, (yoff + 1.0) / 12.8 - 0.009
			-- u2, v2 = (xoff + 1.0) / 16.0 - 0.001, (yoff + 1.0) / 12.8 - 0.021 + 0.01
		end
	else
		if (bDontPrint) then return end
		width = 32.0 * self.Details.scaleX * w
		height = 40.0 * self.Details.scaleY * 0.5
		
		u1 = xoff / 16.0
		v1 = yoff / 16.0
		u2 = (xoff + w) / 16.0
		v2 = (yoff + 1.0) / 16.0 - 0.0001
	end
	
	-- u1 = xoff / 16.0
	-- v1 = yoff / 12.8
	-- u2 = (xoff + 1.0) / 16.0 - 0.001
	-- v2 = (yoff + 1.0) / 12.8 - 0.002
	
	-- u1 = GetCharXOffset(c) / 512.0
	-- v1 = vOffset / 512.0
	-- u2 = u1 + (Size[self.Details.style][c] / 512.0)
	-- v2 = v1 + (40.0 / 512.0)
	
	-- if (self.Details.style == FONT_BANK or self.Details.style == FONT_STANDARD) and (self.Details.slant ~= 0.0) then
		-- fontBatches[self.Details.style]:AddDraw2(x / SCREEN_WIDTH, y / SCREEN_HEIGHT, width / SCREEN_WIDTH, height / SCREEN_HEIGHT, u0, v0, u1, v1, u3, v3, u2, v2, self.Details.color.rgba)
	-- else
		-- fontBatches[self.Details.style]:AddDraw(x / SCREEN_WIDTH, y / SCREEN_HEIGHT, width / SCREEN_WIDTH, height / SCREEN_HEIGHT, u1, v1, u2, v2, self.Details.color.rgba)
	-- end
	DrawSpriteUv("fonts", fontTxd[self.Details.style], x / SCREEN_WIDTH, y / SCREEN_HEIGHT, width / SCREEN_WIDTH, height / SCREEN_HEIGHT, u1, v1, u2, v2, 0.0, self.Details.color.r, self.Details.color.g, self.Details.color.b, self.Details.color.a)
	DrawSpriteUv("fonts", fontTxd[self.Details.style], x, 0.5, 0.15, 0.25, u1, 0.0, u2, 1.0, 0.0, self.Details.color.r, self.Details.color.g, self.Details.color.b, self.Details.color.a)
end

function CFont:FinalizeDraw()
	for _, batch in pairs(fontBatches) do
		-- batch:Draw()
	end
end

function CFont:RenderFontBuffer(x, y, str)
	if (x <= 0.0 or x > SCREEN_WIDTH or y <= 0.0 or y > SCREEN_HEIGHT) then
		return
	end
	
	local dropShadowPosition = self.Details.dropShadowPosition
	if (dropShadowPosition ~= 0 and (self.Details.style == FONT_BANK or self.Details.style == FONT_STANDARD)) then
		local color = self.Details.color
		self.Details.color = self.Details.dropColor
		self.Details.dropShadowPosition = 0
		self.Details.bIsShadow = true
		if (self.Details.slant ~= 0.0) then
			self.Details.slantRefX = self.Details.slantRefX + SCREEN_SCALE_X(dropShadowPosition)
			self.Details.slantRefY = self.Details.slantRefY + SCREEN_SCALE_Y(dropShadowPosition)
			self:RenderFontBuffer(SCREEN_SCALE_X(dropShadowPosition) + x, SCREEN_SCALE_Y(dropShadowPosition) + y, str)
			self.Details.slantRefX = self.Details.slantRefX - SCREEN_SCALE_X(dropShadowPosition)
			self.Details.slantRefY = self.Details.slantRefY - SCREEN_SCALE_Y(dropShadowPosition)
		else
			self:RenderFontBuffer(x + SCREEN_SCALE_X(dropShadowPosition), y + SCREEN_SCALE_Y(dropShadowPosition), str)
		end
		self.Details.color = color
		self.Details.dropShadowPosition = dropShadowPosition
		self.Details.bIsShadow = false
	end
	
	for i=1,#str do
		local c = str:byte(i) - (string.byte(' ') - 1)
			
		if (self.Details.bFontHalfTexture) then
			c = self:FindNewCharacter(c)
		elseif (c > 155) then
			c = string.byte('\0')
		end
		
		if (self.Details.slant ~= 0.0) then
			y = (self.Details.slantRefX - x) * self.Details.slant + self.Details.slantRefY
		end
		self:PrintChar(x, y, c)
		-- if (not self.Details.bFontHalfTexture and c == 30) then c = 61 end
		x = x + self.Details.scaleX * self:GetCharacterWidth(c)
		-- x = x + 30
	end
end

function CFont:PrintString(xstart, ystart, str)
	local x, y
	
	if (self.Details.centre or self.Details.rightJustify) then
		x = 0.0
	else
		x = xstart
	end
	y = ystart
	
	local xEnd = self.Details.centre and self.Details.centreSize or (self.Details.rightJustify and xstart - self.Details.rightJustifyWrap or self.Details.wrapX)
		
	x = x + self:GetStringWidth(str)
	local xleft = self.Details.centre and xstart - x/2 or (self.Details.rightJustify and xstart - x or xstart)
	self:RenderFontBuffer(xleft, y, str)
end

function CFont:PrintStringFromBottom(x, y, str)
	y = y - (32.0 * self.Details.scaleY / 2.0 + 2.0 * self.Details.scaleY) * self:GetNumberLines(x, y, str)
	if (self.Details.slant ~= 0.0) then
		y = y - ((self.Details.slantRefX - x) * self.Details.slant + self.Details.slantRefY)
	end
	self:PrintString(x, y, str)
end