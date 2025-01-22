LABEL_COLOR = CRGBA(255, 150, 225, 255)
SELECTIONBORDER_COLOR = CRGBA(25, 130, 70, 255)
MENUOPTION_COLOR = LABEL_COLOR
SELECTEDMENUOPTION_COLOR = LABEL_COLOR
HEADER_COLOR = LABEL_COLOR
DARKMENUOPTION_COLOR = CRGBA(195, 90, 165, 255)
SLIDERON_COLOR = CRGBA(97, 194, 247, 255)
SLIDEROFF_COLOR = CRGBA(27, 89, 130, 255)
LIST_BACKGROUND_COLOR = CRGBA(49, 101, 148, 130)
LIST_OPTION_COLOR = CRGBA(155, 155, 155, 255)
RADIO_SELECTOR_COLOR = SLIDEROFF_COLOR
INACTIVE_RADIO_COLOR = CRGBA(100, 100, 255, 100)
SCROLLBAR_COLOR = LABEL_COLOR

MENUHEADER_POS_X = 10
MENUHEADER_POS_Y = 10
MENUHEADER_HEIGHT = 2
MENUHEADER_WIDTH = 1

MENU_X_MARGIN = 10.0

LISTITEM_X_SCALE = 0.4
LISTITEM_Y_SCALE = 0.6

function MENU_X_RIGHT_ALIGNED(x)
	return SCALE_AND_CENTER_X(DEFAULT_SCREEN_WIDTH - (x))
end

function MENU_X_LEFT_ALIGNED(x)
	return SCALE_AND_CENTER_X(x)
end

MENU_X = SCREEN_SCALE_X
MENU_Y = SCREEN_SCALE_Y

function SET_FONT_FOR_MENU_HEADER()
	font:SetRightJustifyOn()
	font:SetFontStyle(FONT_HEADING)
	font:SetScale(MENU_X(MENUHEADER_WIDTH), MENU_Y(MENUHEADER_HEIGHT))
	font:SetDropShadowPosition(0)
end

function SET_FONT_FOR_LIST_ITEM()
	font:SetRightJustifyOff()
	font:SetScale(MENU_X(LISTITEM_X_SCALE), MENU_Y(LISTITEM_Y_SCALE))
	font:SetFontStyle(FONT_STANDARD)
end

function Initialize()
	-- RequestStreamedTextureDict("menu_vc")
	RequestStreamedTextureDict("menu")
	
	font = CFont
	font:Initialize()
	
	CreateThread(DrawStandardMenus)
end

function DrawStandardMenus()
	while true do Wait(0)
		itemsAreSelectable = true
		font:SetBackgroundOff()
		font:SetPropOn()
		font:SetCentreOff()
		font:SetJustifyOn()
		font:SetBackGroundOnlyTextOff()
		
		local xMargin = MENU_X_MARGIN
		
		font:SetWrapx(MENU_X_RIGHT_ALIGNED(xMargin))
		font:SetRightJustifyWrap(MENU_X_LEFT_ALIGNED(xMargin))
		font:SetCentreSize(SCREEN_SCALE_X(DEFAULT_SCREEN_WIDTH))
		
		SET_FONT_FOR_MENU_HEADER()
		font:SetColor(CRGBA(30, 30, 30, 255))
		font:PrintString(SCREEN_STRETCH_FROM_RIGHT(MENUHEADER_POS_X) - MENU_X(7), SCREEN_SCALE_Y(MENUHEADER_POS_Y + 7), "MAIN MENU")
		
		font:SetColor(HEADER_COLOR)
		font:PrintString(SCREEN_STRETCH_FROM_RIGHT(MENUHEADER_POS_X), SCREEN_SCALE_Y(MENUHEADER_POS_Y), "MAIN MENU")
	end
end

CreateThread(Initialize)