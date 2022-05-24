math.randomseed(os.time())
function Moedasload()
	DelayMoedas = 2
	Moedass = 0
	SpeedMoedas = 100
	delayMoedas=1
	TempoCriarMoedas = DelayMoedas
	Moedas = {}
	Tempo=0
	moedasimg=newAnimation1(love.graphics.newImage("Imagens/coins.png"),53,48,1)
	
end 

function Moedasupdate(dt)
	if Vivo then
	TempoCriarMoedas = TempoCriarMoedas - (dt*1)
	SpeedMoedas = SpeedMoedas + 10*dt
	delayMoedas = delayMoedas - dt * 1
	
	if math.random(1,100) < 2 and delayMoedas < 0 then -- criando geração aleatoria  
		delayMoedas = 1 	
		moedas = {}
		moedas.l=53
		moedas.h=48 
		moedas.x = math.random(0,larguraTela - moedas.l ) 
		moedas.y = math.random(0,100 - moedas.h) 
					
		table.insert(Moedas,moedas) 		
	end 

	for i=#Moedas,1,-1 do 				
		local moedas = Moedas[i] 		
		moedas.y = moedas.y + SpeedMoedas * dt 
		if moedas.y < 0 then
			table.remove( Moedas, i)
		end
	end
	end
end
function Moedasdraw()
	if Vivo then
		for i=#Moedas,1,-1 do
			local moedas = Moedas[i] 
			--	love.graphics.setColor(0,1,0)
				--love.graphics.rectangle("fill",moedas.x,moedas.y,moedas.l,moedas.h) 
				local spriteNum = math.floor(moedasimg.currentTime / moedasimg.duration * #moedasimg.quads) + 1
    			love.graphics.draw(moedasimg.spriteSheet, moedasimg.quads[spriteNum], moedas.x, moedas.y, 0, 0.5)
		end
	end
end