
MONEY_COLOR = CRGBA(0, 207, 133, 255)
AMMO_COLOR = CRGBA(255, 150, 225, 255)
HEALTH_COLOR = CRGBA(255, 150, 225, 255)
ARMOUR_COLOR = CRGBA(185, 185, 185, 255)
NOTWANTED_COLOR = CRGBA(27, 89, 130, 255)
WANTED_COLOR_FLASH = CRGBA(62, 141, 181, 255)
WANTED_COLOR = CRGBA(97, 194, 247, 255)
ZONE_COLOR = CRGBA(45, 155, 90, 255)
VEHICLE_COLOR = CRGBA(97, 194, 247, 255)
CLOCK_COLOR = CRGBA(97, 194, 247, 255)
TIMER_COLOR = CRGBA(97, 194, 247, 255)
COUNTER_COLOR = CRGBA(97, 194, 247, 255)
PAGER_COLOR = CRGBA(32, 162, 66, 205)
RADARDISC_COLOR = CRGBA(255, 255, 255, 255)
BIGMESSAGE_COLOR = CRGBA(255, 150, 225, 255)
WASTEDBUSTED_COLOR = CRGBA(0, 207, 133, 255)
ODDJOB_COLOR = CRGBA(0, 207, 133, 255)
ODDJOB2_COLOR = CRGBA(97, 194, 247, 255)
MISSIONTITLE_COLOR = CRGBA(220, 172, 2, 255)

-- MONEY_COLOR = CRGBA(89, 115, 150, 255)
-- AMMO_COLOR = CRGBA(0, 0, 0, 255)
-- HEALTH_COLOR = CRGBA(186, 101, 50, 255)
-- ARMOUR_COLOR = CRGBA(124, 140, 95, 255)
-- WANTED_COLOR = CRGBA(193, 164, 120, 255)
-- ZONE_COLOR = CRGBA(152, 154, 82, 255)
-- VEHICLE_COLOR = CRGBA(194, 165, 120, 255)
-- CLOCK_COLOR = CRGBA(194, 165, 120, 255)
-- TIMER_COLOR = CRGBA(186, 101, 50, 255)
-- COUNTER_COLOR = CRGBA(0, 106, 164, 255)
-- PAGER_COLOR = CRGBA(32, 162, 66, 205)
-- RADARDISC_COLOR = CRGBA(0, 0, 0, 255)
-- BIGMESSAGE_COLOR = CRGBA(85, 119, 133, 255)
-- WASTEDBUSTED_COLOR = CRGBA(170, 123, 87, 255)
-- ODDJOB_COLOR = CRGBA(89, 115, 150, 255)
-- ODDJOB2_COLOR = CRGBA(156, 91, 40, 255)
-- MISSIONTITLE_COLOR = CRGBA(220, 172, 2, 255)

HUD_TEXT_SCALE_X = 0.7
HUD_TEXT_SCALE_Y = 1.25

ms_bFixRadar = true
RADAR_LEFT = 40.0
RADAR_BOTTOM = 40.0
RADAR_WIDTH = ms_bFixRadar and 82.0 or 94.0
RADAR_HEIGHT = ms_bFixRadar and 82.0 or 76.0
RADAR_ZOOM = 0.1

HUD_FIST = 1
HUD_RADARDISC = 50
HUD_SITEM16 = 64

m_Wants_To_Draw_Hud = true
m_WideScreenOn = false

local function GetWantedLevel()
	if GetPlayerWantedLevel(PlayerId()) > 0 then
		return GetPlayerWantedLevel(PlayerId())
	end
	return GetFakeWantedLevel()
end

local function GetTimeStepInMilliseconds()
	-- return Timestep() / 50.0 * 1000.0
	return GetFrameTime() * 1000.0
end

local GetTimeInMiliseconds = GetGameTimer

local Sprites = {}

function Initialize()
	RequestStreamedTextureDict("hud_vc")
	RequestStreamedTextureDict("map_vc")
	RequestStreamedTextureDict("hud_v")
	
	font = CFont
	font:Initialize()
	
	m_ZoneState = 0
	m_VehicleState = 0
	m_VehicleNameTimer = 0
	m_pVehicleNameToPrint = ""
	m_pLastZoneName = ""
	m_pLastVehicleName = ""
	m_nVisibleMoney = 0
	m_nTimeLastHealthLoss = 0
	m_nTimeLastArmourLoss = 0
	m_nLastWantedLevelChange = 0
	m_nMinWantedLevel = 0
	
	Sprites[HUD_RADARDISC] = CSprite2d()
	Sprites[HUD_RADARDISC]:SetTexture("radardisc")
	Sprites[HUD_FIST] = CSprite2d()
	Sprites[HUD_FIST]:SetTexture("fist")
	Sprites[HUD_SITEM16] = CSprite2d()
	Sprites[HUD_SITEM16]:SetTexture("siteM16")
	
	CreateThread(Draw)
	CreateThread(DrawCustom)
end

function GetMinimapPos()
	SetScriptGfxAlign(string.byte('L'), string.byte('B'))
	local minimapTopX, minimapTopY = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
	ResetScriptGfxAlign()
	-- local w, h = GetActiveScreenResolution()
	return vec(minimapTopX, minimapTopY)
end

local function PrepareRadar()
    local minimap = RequestScaleformMovie("minimap")
    SetRadarBigmapEnabled(true, false)
    Wait(0)
    SetRadarBigmapEnabled(false, false)

    while true do
        Wait(0)
        BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
        ScaleformMovieMethodAddParamInt(3)
        EndScaleformMovieMethod()
    end
end

function DrawCustom()
	
	CreateThread(PrepareRadar)
	RadardiscSprite = CSprite2d("hud_v")
	RadardiscSprite:SetTexture("radardisc")

	while true do Wait(0)
		local pos = GetMinimapPos()
		-- pos += vec(0.150/2, (0.188888/2)-0.005)
		
		-- 0.150
		-- 0.188888
		
		size = vec(0.150, 0.18)
		size /= vec(GetAspectRatio() / (16/9), 1.0)
		-- size /= vec(GetAspectRatio(), 1.0)
		
		pos += size/2
		
		-- SetWidescreenFormat(0)
		SetScriptGfxDrawOrder(7)
		DrawSprite("hud_v", "radardisc", pos.x, pos.y+0.0025, size.x, size.y, 0.0, 0, 0, 0, 255)
		DrawSprite("hud_v", "radardisc", pos.x, pos.y, size.x, size.y, 0.0, 255, 255, 255, 255)
		
		SetScriptGfxDrawOrder(1)
	end
end

AddEventHandler('gameEventTriggered', function(name, args)
	-- print('game event ' .. name .. ' (' .. json.encode(args) .. ')')
	if name == 'CEventNetworkEntityDamage' then
		if args[1] == PlayerPedId() then
			if GetPedArmour(PlayerPedId()) > 0 then
				m_nTimeLastArmourLoss = GetGameTimer()
			else
				m_nTimeLastHealthLoss = GetGameTimer()
			end
		end
	end
end)

function Draw()
	while true do Wait(0)
	
		local FRAMECOUNTER = GetFrameCount()
		
		local pos = GetEntityCoords(PlayerPedId())
		-- local street, road = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
		
		-- local m_pZoneName = GetStreetNameFromHashKey(road)
		m_pZoneName = GetLabelText(GetNameOfZone(pos.x, pos.y, pos.z))
		
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			local veh = GetVehiclePedIsIn(PlayerPedId(), false)
			local vehName = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
			m_VehicleName = GetLabelText(vehName)
			if m_VehicleName == 'NULL' then
				m_VehicleName = vehName .. ' missing'
			end
		else
			m_VehicleName = false
		end
		
		local _, m_nMoney = StatGetInt("MP0_WALLET_BALANCE")
		
		-- if HasEntityBeenDamagedByAnyObject(PlayerPedId()) == 1 then
			-- ClearEntityLastDamageEntity(PlayerPedId())
			-- m_nTimeLastHealthLoss = GetGameTimer()
		-- end
		
		if (m_nVisibleMoney ~= m_nMoney) then
			local diff = m_nMoney - m_nVisibleMoney
			local diffAbs = math.abs(diff)
			local changeBy
			
			if (diffAbs > 1000000) then -- added this one due to insanely large amounts of money you can have
				changeBy = 123456
			elseif (diffAbs > 100000) then
				changeBy = 12345
			elseif (diffAbs > 10000) then
				changeBy = 1234
			elseif (diffAbs > 1000) then
				changeBy = 123
			elseif (diffAbs > 50) then
				changeBy = 42
			else
				changeBy = 1
			end
			
			if (diff < 0) then
				m_nVisibleMoney = m_nVisibleMoney - changeBy
			else
				m_nVisibleMoney = m_nVisibleMoney + changeBy
			end
		end
		
		local m_fHealth = math.max(0, math.floor(GetEntityHealth(PlayerPedId()) + 0.5)-100)
		
		local wanted = GetWantedLevel()
		if (lastWanted ~= wanted) then
			m_nLastWantedLevelChange = GetGameTimer()
		end
		
		if (m_Wants_To_Draw_Hud and not m_WideScreenOn) then
			local playerPed = PlayerPedId()
			local weaponType = 0 -- TODO: map weps to existing coords
			
			--[[
				DrawMoneyCounter
			]]
			-- local sPrint = string.format("$%08d", money)
			local sPrint = string.format("}%08d", m_nVisibleMoney)
			
			font:SetPropOff()
			font:SetBackgroundOff()
			font:SetScale(SCREEN_SCALE_X(HUD_TEXT_SCALE_X), SCREEN_SCALE_Y(HUD_TEXT_SCALE_Y))
			font:SetCentreOff()
			font:SetRightJustifyOn()
			font:SetRightJustifyWrap(0.0)
			font:SetBackGroundOnlyTextOff()
			font:SetFontStyle(FONT_HEADING)
			font:SetPropOff()
			font:SetDropShadowPosition(2)
			font:SetDropColor(CRGBA(0, 0, 0, 255))
			font:SetColor(MONEY_COLOR)
			font:PrintString(SCREEN_SCALE_FROM_RIGHT(110), SCREEN_SCALE_Y(43), sPrint)
			
			--[[
				DrawAmmo
			]]
			local _, weaponType = GetCurrentPedWeapon(playerPed, 1)
			-- local AmmoAmount = GetAmmoInPedWeapon(playerPed, weaponType)
			local AmmoAmount = GetMaxAmmoInClip(playerPed, weaponType, 1)
			local _, AmmoInClip = GetAmmoInClip(playerPed, weaponType)
			local TotalAmmo = GetAmmoInPedWeapon(playerPed, weaponType)
			local Ammo, Clip
			
			if (AmmoAmount <= 1 or AmmoAmount >= 1000) then
				sPrint = string.format("%d", TotalAmmo)
			else
				Clip = AmmoInClip
				Ammo = math.min(TotalAmmo - AmmoInClip, 9999)
				
				sPrint = string.format("%d-%d", Ammo, Clip)
			end
			
			--[[
				DrawWeaponIcon
			]]
			if (weaponType <= 0) then
				Sprites[HUD_FIST]:Draw(
					CRect(SCREEN_SCALE_FROM_RIGHT(99), SCREEN_SCALE_Y(27), SCREEN_SCALE_FROM_RIGHT(35), SCREEN_SCALE_Y(91)),
					CRGBA(255, 255, 255, 255),
					0.015, 0.015,
					1.0, 0.0,
					0.015, 1.0,
					1.0, 1.0)
			else
				-- TODO: draw weapon
			end
			
			font:SetBackgroundOff()
			font:SetScale(SCREEN_SCALE_X(0.5), SCREEN_SCALE_Y(0.8))
			font:SetJustifyOff()
			font:SetCentreOn()
			font:SetCentreSize(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH))
			font:SetPropOn()
			font:SetDropShadowPosition(0)
			font:SetFontStyle(FONT_STANDARD)
				if (math.min(9999, TotalAmmo - AmmoInClip) and TotalAmmo > 0) then
					font:SetDropShadowPosition(2)
					font:SetDropColor(CRGBA(0, 0, 0, alpha))
					font:SetColor(AMMO_COLOR)
					font:PrintString(SCREEN_SCALE_FROM_RIGHT(66), SCREEN_SCALE_Y(90), sPrint)
					font:SetDropShadowPosition(0)
				end
				
			--[[
				DrawHealth
			]]
			sPrint = string.format("%03d", m_fHealth)
			font:SetBackgroundOff()
			font:SetScale(SCREEN_SCALE_X(HUD_TEXT_SCALE_X), SCREEN_SCALE_Y(HUD_TEXT_SCALE_Y))
			font:SetJustifyOff()
			font:SetCentreOff()
			font:SetRightJustifyWrap(0.0)
			font:SetRightJustifyOn()
			font:SetPropOff()
			font:SetFontStyle(FONT_HEADING)
			font:SetDropShadowPosition(2)
			font:SetDropColor(CRGBA(0, 0, 0, 255))
			if (m_fHealth >= 10 or m_fHealth < 10 and FRAMECOUNTER & 8 ~= 0) then
				font:SetColor(HEALTH_COLOR)
				
				font:PrintString(SCREEN_SCALE_FROM_RIGHT(110), SCREEN_SCALE_Y(65), sPrint)
				if (m_nTimeLastHealthLoss == 0 or GetTimeInMiliseconds() > m_nTimeLastHealthLoss + 2000 or FRAMECOUNTER & 4 ~= 0) then
					font:PrintString(SCREEN_SCALE_FROM_RIGHT(110 + 54), SCREEN_SCALE_Y(65), "{")
				end
			end
			
			--[[
				DrawArmour
			]]
			font:SetScale(SCREEN_SCALE_X(HUD_TEXT_SCALE_X), SCREEN_SCALE_Y(HUD_TEXT_SCALE_Y))
			if (GetPedArmour(playerPed)) > 1 then
				sPrint = string.format("%03d", GetPedArmour(playerPed))
				font:SetColor(ARMOUR_COLOR)
				font:PrintString(SCREEN_SCALE_FROM_RIGHT(182), SCREEN_SCALE_Y(65), sPrint)
				if (m_nTimeLastArmourLoss == 0 or GetTimeInMiliseconds() > m_nTimeLastArmourLoss + 2000 or FRAMECOUNTER & 4 ~= 0) then
					font:PrintString(SCREEN_SCALE_FROM_RIGHT(182+52), SCREEN_SCALE_Y(65), "<")
				end
			end
			
			--[[
				DrawWantedLevel
			]]
			font:SetBackgroundOff()
			font:SetScale(SCREEN_SCALE_X(HUD_TEXT_SCALE_X), SCREEN_SCALE_Y(HUD_TEXT_SCALE_Y))
			font:SetJustifyOff()
			font:SetCentreOff()
			font:SetRightJustifyOn()
			font:SetPropOn()
			font:SetFontStyle(FONT_STANDARD)
			
			for i=0,5 do
				if (GetWantedLevel() > i and (GetTimeInMiliseconds() > m_nLastWantedLevelChange + 2000 or FRAMECOUNTER & 4 ~= 0)) then
					font:SetColor(WANTED_COLOR)
				elseif (m_nMinWantedLevel > i and FRAMECOUNTER & 4 ~= 0) then -- weird check
					font:SetColor(WANTED_COLOR_FLASH)
				elseif (GetWantedLevel() <= i) then
					font:SetColor(NOTWANTED_COLOR)
				end
				font:PrintString(SCREEN_SCALE_FROM_RIGHT(119 + 23 * (i-1)), SCREEN_SCALE_Y(87), ">")
			end
			
			
			--[[
				DrawZoneName
			]]
			-- STATES
			-- 0 = INACTIVE
			-- 1 = IDLE
			-- 2 = FADING IN
			-- 3 = FADING OUT 
			-- 4 = SWAPPING TO NEXT ZONE
			
			if (m_pZoneName) then
				if (m_pZoneName ~= m_pLastZoneName) then
					if (m_ZoneState == 0) then
						m_ZoneState = 2
						m_ZoneToPrint = m_pZoneName
						m_ZoneNameTimer = 0
						m_ZoneFadeTimer = 0
						if (m_VehicleState == 1 or m_VehicleState == 2) then
							m_VehicleState = 3
						end
					elseif (m_ZoneState == 1 or m_ZoneState == 2 or m_ZoneState == 3 or m_ZoneState == 4) then
						m_ZoneNameTimer = 5
						m_ZoneState = 4
					end
					m_pLastZoneName = m_pZoneName
				end
				
				fZoneAlpha = 0.0
				if (m_ZoneState) then
					if (m_ZoneState == 1) then
						fZoneAlpha = 255.0
						m_ZoneFadeTimer = 1000
						if (m_ZoneNameTimer > 10000.0) then
							m_ZoneFadeTimer = 1000
							m_ZoneState = 3
						end
					elseif (m_ZoneState == 2) then
						m_ZoneFadeTimer = m_ZoneFadeTimer + GetTimeStepInMilliseconds()
						if (m_ZoneFadeTimer > 1000.0) then
							m_ZoneState = 1
							m_ZoneFadeTimer = 1000
						end
						fZoneAlpha = m_ZoneFadeTimer * 0.001 * 255
					elseif (m_ZoneState == 3) then
						m_ZoneFadeTimer = m_ZoneFadeTimer - GetTimeStepInMilliseconds()
						if (m_ZoneFadeTimer < 0.0) then
							m_ZoneState = 0
							m_ZoneFadeTimer = 0
						end
						fZoneAlpha = m_ZoneFadeTimer * 0.001 * 255
					elseif (m_ZoneState == 4) then
						m_ZoneFadeTimer = m_ZoneFadeTimer - GetTimeStepInMilliseconds()
						if (m_ZoneFadeTimer < 0.0) then
							m_ZoneFadeTimer = 0
							m_ZoneToPrint = m_pLastZoneName
							m_ZoneState = 2
						end
						fZoneAlpha = m_ZoneFadeTimer * 0.001 * 255
					end
				end
				
				if (true) then -- TODO: BigMessage checks
					m_ZoneNameTimer = m_ZoneNameTimer + GetTimeStepInMilliseconds()
					font:SetJustifyOff()
					font:SetPropOn()
					font:SetBackgroundOff()
					font:SetScale(SCREEN_SCALE_X(1.7), SCREEN_SCALE_Y(1.8))
					font:SetSlantRefPoint(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(128))
					font:SetSlant(0.15)
					font:SetRightJustifyOn()
					font:SetBackGroundOnlyTextOff()
					font:SetDropShadowPosition(2)
					font:SetDropColor(CRGBA(0, 0, 0, math.ceil(fZoneAlpha)))
					font:SetFontStyle(FONT_BANK)
					font:SetColor(CRGBA(ZONE_COLOR.r, ZONE_COLOR.g, ZONE_COLOR.b, math.ceil(fZoneAlpha)))
					-- font:PrintStringFromBottom(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(128), m_ZoneToPrint)
					font:PrintString(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(128), m_ZoneToPrint)
					font:SetSlant(0.0)
				else
					m_ZoneState = 3
				end
			end
				
			--[[
				DrawVehicleName
			]]
			if (m_VehicleName) then
				fVehicleAlpha = 0.0
				
				if (m_VehicleName ~= m_pLastVehicleName) then
					if (m_VehicleState == 0) then
						m_VehicleState = 2
						m_pVehicleNameToPrint = m_VehicleName
						m_VehicleNameTimer = 0
						m_VehicleFadeTimer = 0
						if (m_ZoneState == 1 or m_ZoneState == 2) then
							m_ZoneState = 3
						end
					elseif (m_VehicleState == 1 or m_VehicleState == 2 or m_VehicleState == 3 or m_VehicleState == 4) then
						m_VehicleNameTimer = 0
						m_VehicleState = 4
					end
					m_pLastVehicleName = m_VehicleName
				end
				
				if (m_VehicleState) then
					if (m_VehicleState == 1) then
						if (m_VehicleNameTimer > 10000) then
							m_VehicleFadeTimer = 1000
							m_VehicleState = 3
						end
						fVehicleAlpha = 255.0
					elseif (m_VehicleState == 2) then
						m_VehicleFadeTimer = m_VehicleFadeTimer + GetTimeStepInMilliseconds()
						if (m_VehicleFadeTimer > 1000) then
							m_VehicleState = 1
							m_VehicleFadeTimer = 1000
						end
						fVehicleAlpha = m_VehicleFadeTimer * 0.001 * 255
					elseif (m_VehicleState == 3) then
						m_VehicleFadeTimer = m_VehicleFadeTimer - GetTimeStepInMilliseconds()
						if (m_VehicleFadeTimer < 0) then
							m_VehicleState = 0
							m_VehicleFadeTimer = 0
						end
						fVehicleAlpha = m_VehicleFadeTimer * 0.001 * 255
					elseif (m_VehicleState == 4) then
						m_VehicleFadeTimer = m_VehicleFadeTimer - GetTimeStepInMilliseconds()
						if (m_VehicleFadeTimer < 0) then
							m_VehicleFadeTimer = 0
							m_pVehicleNameToPrint = m_pLastVehicleName
							m_VehicleNameTimer = 0
							m_VehicleState = 2
						end
						fVehicleAlpha = m_VehicleFadeTimer * 0.001 * 255
					end
					
					if (not false) then -- TODO: m_Message check
						m_VehicleNameTimer = m_VehicleNameTimer + GetTimeStepInMilliseconds()
						font:SetJustifyOff()
						font:SetPropOn()
						font:SetBackgroundOff()
						font:SetScale(SCREEN_SCALE_X(1.7), SCREEN_SCALE_Y(1.8))
						font:SetSlantRefPoint(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(105))
						font:SetSlant(0.15)
						font:SetRightJustifyOn()
						font:SetRightJustifyWrap(0.0)
						font:SetBackGroundOnlyTextOff()
						font:SetFontStyle(FONT_BANK)
						font:SetDropShadowPosition(2)
						font:SetColor(CRGBA(VEHICLE_COLOR.r, VEHICLE_COLOR.g, VEHICLE_COLOR.b, math.ceil(fVehicleAlpha)))
						font:SetDropColor(CRGBA(0, 0, 0, math.ceil(fVehicleAlpha)))
						-- font:PrintStringFromBottom(SCREEN_SCALE_FROM_BOTTOM(32), SCREEN_SCALE_FROM_BOTTOM(105), m_pVehicleNameToPrint)
						font:PrintString(SCREEN_SCALE_FROM_RIGHT(32), SCREEN_SCALE_FROM_BOTTOM(105), m_pVehicleNameToPrint)
						font:SetSlant(0.0)
					end
				end
			else
				m_pLastVehicleName = nil
				m_VehicleState = 0
				m_VehicleFadeTimer = 0
				m_VehicleNameTimer = 0
			end
			
			--[[
				DrawClock
			]]
			if (true) then -- m_ClockState check?
				font:SetJustifyOff()
				font:SetCentreOff()
				font:SetBackgroundOff()
				font:SetScale(SCREEN_SCALE_X(HUD_TEXT_SCALE_X), SCREEN_SCALE_Y(HUD_TEXT_SCALE_Y))
				font:SetBackGroundOnlyTextOff()
				font:SetPropOff()
				font:SetFontStyle(FONT_HEADING)
				font:SetRightJustifyOn()
				font:SetRightJustifyWrap(0.0)
				font:SetDropShadowPosition(2)
				font:SetDropColor(CRGBA(0, 0, 0, 255))
				
				sPrint = string.format("%02d:%02d", GetClockHours(), GetClockMinutes())
				font:SetColor(CLOCK_COLOR)
				font:PrintString(SCREEN_SCALE_FROM_RIGHT(111), SCREEN_SCALE_Y(22), sPrint)
			end
			
			--[[
				DrawRadar
			]]
			SetScriptGfxDrawOrder(2)
			local rect = CRect(0.0, 0.0, SCREEN_SCALE_X(RADAR_WIDTH), SCREEN_SCALE_Y(RADAR_HEIGHT))
			
			rect:Translate(SCREEN_SCALE_X_FIX(RADAR_LEFT), SCREEN_SCALE_FROM_BOTTOM(RADAR_BOTTOM + RADAR_HEIGHT))
			
			rect:Grow(SCREEN_SCALE_X(6), SCREEN_SCALE_X(6), SCREEN_SCALE_Y(6), SCREEN_SCALE_Y(6))
			
			-- rect:Grow(6)
			
			rect:Translate(SCREEN_SCALE_X_FIX(0), SCREEN_SCALE_Y_FIX(2))
			-- Sprites[HUD_RADARDISC]:Draw(rect, CRGBA(0, 0, 0, 255))
			rect:Translate(SCREEN_SCALE_X_FIX(0), SCREEN_SCALE_Y_FIX(-2))
			-- Sprites[HUD_RADARDISC]:Draw(rect, RADARDISC_COLOR)
			
			-- local rect = CRect(SCREEN_SCALE_X(320), 0, SCREEN_SCALE_X(640), SCREEN_SCALE_Y(100))
			-- local rect = CRect(0, 0, SCREEN_SCALE_X(RADAR_WIDTH), SCREEN_SCALE_Y(RADAR_HEIGHT))
			-- rect:Translate(SCREEN_SCALE_X_FIX(RADAR_LEFT), SCREEN_SCALE_FROM_BOTTOM(RADAR_BOTTOM + RADAR_HEIGHT))
			-- rect:Translate(SCREEN_STRETCH_X(DEFAULT_SCREEN_WIDTH), 0)
			
			--[[
				DrawReticle
				quickly thrown together
			]]
			if (IsPlayerFreeAiming(PlayerId())) then
			-- if (IsControlPressed(0, 25)) then
				local rect = CRect(
					(SCREEN_WIDTH / 2) - SCREEN_SCALE_X(32),
					(SCREEN_HEIGHT / 2) - SCREEN_SCALE_Y(32),
					(SCREEN_WIDTH / 2) + SCREEN_SCALE_X(32),
					(SCREEN_HEIGHT / 2) + SCREEN_SCALE_Y(32))
					
				Sprites[HUD_SITEM16]:Draw(rect, CRGBA(255, 255, 255, 255))
			end
			
			-- local rect = CRect(0, 0, 25, 25)
			-- rect:Translate(100, 100)
			-- rect:Grow(1)
			-- CSprite2d():DrawRect(rect, CRGBA(0, 0, 0, 255))
			-- rect:Grow(-1)
			-- CSprite2d():DrawRect(rect, CRGBA(170, 82, 255, 255))

			-- local rect = CRect(0.0, 0.0, SCREEN_SCALE_X(RADAR_WIDTH), SCREEN_SCALE_Y(RADAR_HEIGHT))
			-- rect:Translate(SCREEN_SCALE_X_FIX(RADAR_LEFT), SCREEN_SCALE_FROM_BOTTOM(RADAR_BOTTOM + RADAR_HEIGHT))
		
			-- local x = mid(rect.left, rect.right) / SCREEN_WIDTH
			-- local y = mid(rect.top, rect.bottom) / SCREEN_HEIGHT
			
			-- local w = (rect.right - rect.left) / SCREEN_WIDTH
			-- local h = (rect.bottom - rect.top) / SCREEN_HEIGHT
			
			-- local u0 = (((pos.x + 2600) + 1536) / 3072) - (RADAR_ZOOM)
			-- local v0 = (((pos.y - 50) + 1536) / -3072) - (RADAR_ZOOM)
			-- local u1 = u0 + (RADAR_ZOOM*2)
			-- local v1 = v0 + (RADAR_ZOOM*2)
			
			-- SetScriptGfxDrawOrder(1)
			-- DrawSpriteUv("map_vc", "map", x, y, w, h, u0, v0, u1, v1, GetFinalRenderedCamRot().z, 255, 255, 255, 255)
		
			font:FinalizeDraw()
		end
		
		m_pLastZoneName = m_pZoneName
		m_pLastVehicleName = m_VehicleName
		lastWanted = wanted
	end
end

CreateThread(Initialize)