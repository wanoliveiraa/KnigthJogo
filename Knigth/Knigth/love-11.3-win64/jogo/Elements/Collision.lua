require("Elements/Player")
require("Elements/Dark")
require("Elements/Moedas")
require("Elements/Life")

function AABB(x1 ,y1, w1,h1, x2, y2, w2, h2)
    return  (x1 < x2 + w2 and x2 < x1 + w1 and y1 < y2 + h2 and y2 < y1 + h1)
end

--love.timer.getDelta()
function Colisaoupadate( )
	if Moedass< 10 then
		for i=1,#Dark do
			if   AABB (darks.x,darks.y,darks.l,darks.h,Player.x,Player.y,Player.l,Player.h) then
				table.remove(Dark,i)
				musicdeath:play()
				Vivo=false
				musictheme:pause()
				Pause=false
			
			end
		end
	end
	if Moedass< 10 then
		for i=1,#Fly do
			if   AABB (flys.x,flys.y,flys.l,flys.h,Player.x,Player.y,Player.l,Player.h) then
				table.remove(Fly,i)
				musicdeath:play()
				Vivo=false
				musictheme:pause()
				gameover=false
			
			end
		end
	end
	for i, moedas in ipairs( Moedas ) do
		if AABB (Player.x,Player.y,Player.l,Player.h,moedas.x,moedas.y,moedas.l,moedas.h) then
			table.remove(Moedas,i)
			musiccoins:stop()
			musiccoins:play()
			Vivo=true
			Moedass=Moedass+1
			Carregador=Carregador+0.1
			Tempo=Tempo+1
		end
	end	
	if Moedass>9 then
		if musicstar then
			musicstar:play()
			musictheme:pause()
			Tempo=Tempo-0.1
			Carregador=0
			
		end
	end
	if Tempo<-40 then
		Moedass=0
		Tempo=0
		Carregador=0
		musicstar:stop()
		musictheme:play()
		anima=false
	end
end

function Colidraw( )
	
end