function CRect(l, t, r, b)
	local rect = {}
	rect.__index = rect
	rect.left = l or 1000000.0
	rect.top = t or 1000000.0
	rect.right = r or -1000000.0
	rect.bottom = b or -1000000.0
	
	function rect:ContainPoint(v)
		if (v.x < self.left) then self.left = v.x end
		if (v.x > self.right) then self.right = v.x end
		if (v.y < self.top) then self.top = v.y end
		if (v.y > self.bottom) then self.bottom = v.y end
	end
	
	function rect:ContainRect(r)
		if (r.left < self.left) then self.left = r.left end
		if (r.right > self.right) then self.right = r.right end
		if (r.top < self.top) then self.top = r.top end
		if (r.bottom > self.bottom) then self.bottom = r.bottom end
	end
	
	function rect:IsPointInside(p, extraRadius)
		if extraRadius then
			return p.x >= self.left - extraRadius and p.x <= self.right + extraRadius and p.y >= self.top - extraRadius and p.y <= self.bottom + extraRadius
		else
			return p.x >= self.left and p.x <= self.right and p.y >= self.top and p.y <= self.bottom
		end
	end
	
	function rect:Translate(x, y)
		self.left = self.left + x
		self.right = self.right + x
		self.bottom = self.bottom + y
		self.top = self.top + y
	end
	
	function rect:Grow(l, r, t, b)
		if l and r and t and b then
			self.left = self.left - l
			self.top = self.top - t
			self.right = self.right + r
			self.bottom = self.bottom + b
		elseif l and r then
			self.left = self.left - l
			self.top = self.top - l
			self.right = self.right + r
			self.bottom = self.bottom + r
		else
			local r = l
			self.left = self.left - r
			self.right = self.right + r
			self.top = self.top - r
			self.bottom = self.bottom + r
		end
	end
	
	function rect:GetWidth()
		return self.right - self.left
	end
	
	function rect:GetHeight()
		return self.bottom - self.top
	end
	
	return rect
end