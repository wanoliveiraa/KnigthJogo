function Flyload()
	--math.randomseed(os.time()
	Fly={}
	Flyspeed=150
	DelayFly=5
	TimeCriarFly=DelayFly
	flyini=newAnimation2(love.graphics.newImage("Imagens/bat2.png"),22,41,0.6)
end

function Flyupdate(dt)

	TimeCriarFly= TimeCriarFly -  (1*dt)
	Flyspeed=Flyspeed + (11 * dt)
---	DelayCone=DelayCone - (0.56*dt)
 	--Spawn de Cone
 	if Vivo then
	    if TimeCriarFly  < 0 then
			TimeCriarFly = DelayFly
			flys ={ x=larguraTela, y=300 , h=41 ,l=22}
			table.insert(Fly,flys)
		end
	end
	--Movimento e desaparecimento
    for i, fly in ipairs( Fly ) do
		fly.x = fly.x - ( Flyspeed * dt )
		if fly.x < 0 then
			table.remove( Fly, i)
		end
	end
		
end


function Flydraw()
	--Spawn
	if Vivo then
	for i,fly in ipairs ( Fly) do
		--love.graphics.setColor(255, 0, 0)
		 local spriteNum = math.floor(flyini.currentTime / flyini.duration * #flyini.quads) + 1
    		love.graphics.draw(flyini.spriteSheet, flyini.quads[spriteNum], fly.x, fly.y, 0, 1.3)
    	--love.graphics.rectangle("fill",	dark.x,dark.y,dark.l,dark.h)	
	end
	end
end
	