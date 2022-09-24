

function Darkload()
	--math.randomseed(os.time()
	Dark={}
	Darkspeed=200
	DelayDark=3
	TimeCriarDark=DelayDark
	darkini=newAnimation2(love.graphics.newImage("Imagens/death_knight.png"),46,60,1)
end

function Darkupdate(dt)
	if Vivo then
	TimeCriarDark= TimeCriarDark -  (1*dt)
	Darkspeed=Darkspeed + (16 * dt)

 	--Spawn de Cone
 	if Vivo then
	    if TimeCriarDark  < 0 then
			TimeCriarDark = DelayDark
			darks ={ x=larguraTela, y=500 , h=60 ,l=46}
			table.insert(Dark,darks)
		end
	end
	--Movimento e desaparecimento
    for i, dark in ipairs( Dark ) do
		dark.x = dark.x - ( Darkspeed * dt )
		if dark.x < -46 then
			table.remove( Dark, i)
		end
	end
end
		
end


function Drakdraw()
	--Spawn
if Vivo then
	for i, dark in ipairs ( Dark ) do
		--love.graphics.setColor(255, 0, 0)
		 local spriteNum = math.floor(darkini.currentTime / darkini.duration * #darkini.quads) + 1
    		love.graphics.draw(darkini.spriteSheet, darkini.quads[spriteNum], dark.x, dark.y, 0, 1.3)
    		--love.graphics.rectangle("line",dark.x,dark.y,dark.l,dark.h)
    	--love.graphics.rectangle("fill",	dark.x,dark.y,dark.l,dark.h)	
	end
	end
end
	
	
