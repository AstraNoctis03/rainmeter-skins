function Initialize()
	SeO = '!SetOption'
	picn = 3
	picc = 0
	textn = 3
	textc = 0
	k = -1
	n = 39
	height=220
	colorPhase = 0
end

function Update()
	Add()
	Round()
	Jump()
	picchange()
	color()
	textchange()
end

function Add( ... )
	k = k + 1
	if k == n + 1 then k = 0 end
end

function Jump( ... )
	h1 = math.cos(k/n*math.pi)
	h2 = math.abs(math.tan(k/n*math.pi))*1.4
	h = height-(math.abs(h1)*height)+h2
	SKIN:Bang(SeO, 'Pic', 'Y' ,h)
end

function Round( ... )
	r = k/n
	SKIN:Bang(SeO, 'MRound', 'Formula' ,r)
end

function picchange( ... )
	if k == (n+1)/2 then
		picc = picc + 1
		SKIN:Bang(SeO, 'Pic', 'ImageName' ,'pic'..picc)
			if picc == picn then picc = 0 end
	end
end

function color( ... )
	local c1 = 0
	local c2 = 0
	if k >= (n+1)/2 then
		c1 = k/(n+1)*2*155-155
		c2 = 255
	end
	if k < (n+1)/2 then
		c1 = 155-k/(n+1)*2.1*155
		c2 = 255-k/(n+1)*2.1*255
	end
	colorPhase = colorPhase + 0.015
	local r = math.floor(math.sin(colorPhase) * 127 + 128)
	local g = math.floor(math.sin(colorPhase + 2.0944) * 127 + 128)
	local b = math.floor(math.sin(colorPhase + 4.1888) * 127 + 128)
	local rgbMain = r..','..g..','..b
	local rgbComp = (255-r)..','..(255-g)..','..(255-b)
	co = 'GradientColor | 0 | '..rgbComp..','..c1..' ; 0.0 | '..rgbMain..','..c2..' ; 0.5 | '..rgbComp..','..c1..' ; 1.0'
		SKIN:Bang(SeO, 'Text', 'InlineSetting' ,co)
		SKIN:Bang(SeO, 'Pic', 'ImageTint' ,rgbMain)
end

function textchange( ... )
	if k == (n+1)/2 then
		textc = textc + 1
		SKIN:Bang(SeO, 'Text', 'Text' ,'#text'..textc..'#')
			if textc == textn then textc = 0 end
	end
end
