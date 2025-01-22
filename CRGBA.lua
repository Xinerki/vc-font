function CRGBA(r, g, b, a)
	local color = {}
	color.__index = color
	color.r = r
	color.g = g
	color.b = b
	color.a = a or 255
	color.rgba = (color.a << 24) | (b << 16) | (g << 8) | r

	return color
end