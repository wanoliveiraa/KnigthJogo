
function Wordload()
	Word={}
	background=love.graphics.newImage("Imagens/Fundo.png")
	background2=love.graphics.newImage("Imagens/Fundo.png")
	piso=love.graphics.newImage("Imagens/mud.png")
	love.graphics.setDefaultFilter("nearest","nearest")
	Word.x=0
	Word.px=0
	Word.py=580
	Word.y=0
	Word.r=0
	Word.sx=3.7
	Word.sy=3.7
	Word.ox=0
	Word.oy=0
	Word.x1= 0 - 500
	Word.vel=200
	
	--love.graphics.getBackgroundColor(0,0,255)
	
end

function Wordupdate(dt)
	Word.x=Word.x - Word.vel *dt
	Word.x1=Word.x1-Word.vel *dt

	if Word.x>larguraTela then
		Word.x=Word.x1 + 500
	end
	if Word.x1<larguraTela  then
		Word.x1=Word.x +500
	end

		
end

function Worddraw()
	if Vivo then
		love.graphics.draw(background,Word.x,Word.y,Word.r,Word.sx,Word.sy,Word.ox,Word.oy)
		love.graphics.draw(background2,Word.x1,Word.y,Word.r,Word.sx,Word.sy,Word.ox,Word.oy)
		love.graphics.draw(piso,Word.px,Word.py)
	end
end

