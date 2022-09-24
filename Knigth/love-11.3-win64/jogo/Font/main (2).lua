function love.load()
	
	gameState = "title"

	ScoreAnterior = 0
	ScoreMax = 0
	score = 0
	fonteS = love.graphics.newFont(25)
	fonteM = love.graphics.newFont(17)
	fonteP = love.graphics.newFont(10)

	player = {}
	player.x = 300
	player.y = 300                             
	player.h = 35
	player.w = 45
	player.sp = 300
	playerLife = 1
	playerPLife = 0

	evadeCooldown = 0
	eCoolDH = 10                                
	eCoolDW = 1
	eCoolDX = 580
	eCoolDY = 10 

	moeda = {}
	moeda.x = love.math.random(15,780)
	moeda.y = 800
	moeda.w = 7
	moeda.h = 15

	itemW = 25                                  
	itemH = 25	
	itemX = love.math.random(0,800 - itemW)
	itemY = 600 

	itemSW = 30
	itemSH = 30
	itemSX = love.math.random(0,800 - itemSW)             
	itemSY = 600

	shield = false
	shieldR = player.w + 5                
	
	inimigo = {}
	inimigo.w = 90
	inimigo.h = 90
	inimigo.x = 0
	inimigo.y = love.math.random(100,600)
	inimigo.sp = love.math.random(250,450)

	inimigo2 = {}
	inimigo2.w = 90
	inimigo2.h = 90
	inimigo2.x = 800
	inimigo2.y = love.math.random(100,600)
	inimigo2.sp = love.math.random(250,450)

	inimigo3 = {}
	inimigo3.x = love.math.random(10,300)
	inimigo3.y = 800
	inimigo3.sp = love.math.random(250,450)
	inimigo3.r = 30

	inimigo4 = {}
	inimigo4.x = love.math.random(10,300)
	inimigo4.y = 800
	inimigo4.sp = love.math.random(150,500)
	inimigo4.r = 30

	inimigo5 = {}
	inimigo5.x = love.math.random(250,650)
	inimigo5.y = 800
	inimigo5.sp = love.math.random(300,500)
	inimigo5.r = 60

	inimigo6 = {}
	inimigo6.x = love.math.random(350,790)
	inimigo6.y = 800
	inimigo6.sp = love.math.random(200,400)
	inimigo6.r = 60
	
	timer = 0
	
	background = love.graphics.newImage("Imagens/background1.jpg")

	gameOver = love.graphics.newImage("Imagens/gameover.jpg")

	shieldI = love.graphics.newImage("Imagens/shield.png")

	nuvem1 = love.graphics.newImage("Imagens/nuvemA.png")
	nuvem2 = love.graphics.newImage("Imagens/nuvemA.png")
	nuvem3 = love.graphics.newImage("Imagens/nuvemA.png")
	nuvem4 = love.graphics.newImage("Imagens/nuvemA.png")
	nuvem5 = love.graphics.newImage("Imagens/nuvemB.png")
	nuvem6 = love.graphics.newImage("Imagens/nuvemB.png")
	nuvem7 = love.graphics.newImage("Imagens/nuvemB.png")
	nuvem8 = love.graphics.newImage("Imagens/nuvemB.png")
	nuvem9 = love.graphics.newImage("Imagens/nuvemA.png")

	playerA = love.graphics.newImage("Imagens/paraquedistaA.png")
	playerB = love.graphics.newImage("Imagens/paraquedistaB.png")

	estado = love.graphics.newImage("Imagens/paraquedistaA.png")

	moedaPNG = love.graphics.newImage("Imagens/moeda.png")

	cura = love.graphics.newImage("Imagens/cura.png")

	nuvemA1x = love.math.random(50,300)
	nuvemB1x = love.math.random(50,300)
	nuvemC1x = love.math.random(50,300)
	nuvemA2x = love.math.random(200,450)
	nuvemB2x = love.math.random(200,450)
	nuvemC2x = love.math.random(200,450)
	nuvemA3x = love.math.random(380,750)
	nuvemB3x = love.math.random(380,750)
	nuvemC3x = love.math.random(380,750)

	nuvemAy = 800
	nuvemBy = 800
	nuvemCy = 800

	nuvemAySP = 100
	nuvemBySP = 200
	nuvemCySP = 450

	nave1 = love.graphics.newImage("Imagens/nave1.png")
	nave2 = love.graphics.newImage("Imagens/nave2.png")

	raioBase = love.graphics.newImage("Imagens/hadouken.png")

	itemEscudo = love.graphics.newImage("Imagens/escudo.png")

	love.audio.setVolume(0.5)
	musicaFundo = love.audio.newSource("Audio/theme.mp3","stream")
	musicaFundo:setLooping(true)
	musicaFundo:play()

	love.audio.setVolume(0.8)
	musicaVida = love.audio.newSource("Audio/life.wav","stream")

	musicaShield = love.audio.newSource("Audio/shield.wav","stream")

	audioDano = love.audio.newSource("Audio/hit1.ogg","stream")

	sorteioGO = math.random(1,2)

	love.audio.setVolume(1)
	
  	audioGO = love.audio.newSource("Audio/gameover2.mp3","stream")

  	moedaA = love.audio.newSource("Audio/rupee.wav","stream")



end



function love.update(dt)



	if gameState == "title" then
		continue = 10
		timer = 0
		playerLife = 1
		musicaFundo:play()
	
    	if love.keyboard.isDown("return") then
     		gameState = "instruções"
     	end
    end
    if gameState=="instruções" then 
    	if love.keyboard.isDown("x") then
     	 	gameState="play"
     	end
    end
  	if gameState=="play" then
  		timer = timer + dt
	    inimigo.x = inimigo.x + dt * inimigo.sp
	    inimigo2.x = inimigo2.x - dt * inimigo2.sp
	    inimigo3.y = inimigo3.y - dt * inimigo3.sp
	    inimigo4.y = inimigo4.y - dt * inimigo4.sp
	    inimigo5.y = inimigo5.y - dt * inimigo5.sp
	    inimigo6.y = inimigo6.y - dt * inimigo6.sp

		itemSY = itemSY - dt * love.math.random(50,300)
		itemY = itemY - dt * love.math.random(50,450)
		moeda.y = moeda.y - dt * love.math.random(100,300)
		
		nuvemAy = nuvemAy - dt * nuvemAySP
		nuvemBy = nuvemBy - dt * nuvemBySP
		nuvemCy = nuvemCy - dt * nuvemCySP

		if nuvemAy < 0 then
			nuvemAy = 800
			nuvemAx = love.math.random(50,750)
		end
		if nuvemBy < 0 then
			nuvemBy = 800
			nuvemBx = love.math.random(50,750)
		end
		if nuvemCy < 0 then
			nuvemCy = 800
			nuvemCx = love.math.random(50,750)
		end
		
		if inimigo.x > 800  then 
			inimigo.y = love.math.random(100,600)
			inimigo.x = 0
		end
		if inimigo2.x < 0  then 
			inimigo2.y = love.math.random(100,600)
			inimigo2.x = 800
		end
		if inimigo3.y < 0  then 
			inimigo3.x = love.math.random(50,400 )
			inimigo3.y = 800
		end
		if inimigo4.y < 0  then 
			inimigo4.x =  love.math.random(10,300)
			inimigo4.y = 800
		end
		if inimigo5.y < 0  then 
			inimigo5.x = love.math.random(250,650 )
			inimigo5.y = 800
		end
		if inimigo6.y < 0  then 
			inimigo6.x = love.math.random(350,790 )
			inimigo6.y = 800
		end

		if moeda.y < 0 then
			moeda.x = love.math.random(15,780)
			moeda.y = 800
		end

		if love.keyboard.isDown("left") then
			if player.x > 0 then		
				player.x = player.x - player.sp * dt
				estado = love.graphics.newImage("Imagens/paraquedistaA.png")
			end
		end
		if love.keyboard.isDown("right") then
			if player.x < 800 - player.w then
				player.x = player.x + player.sp * dt
				estado = love.graphics.newImage("Imagens/paraquedistaB.png")
			end
		end
		if love.keyboard.isDown("up") then
			if player.y > 25 then
				player.y = player.y - (player.sp - 25) * dt
			end
		end
		if love.keyboard.isDown("down") then
			if player.y < 600 - player.h then
				player.y = player.y + (player.sp + 20) * dt
			end
		end
		if eCoolDW < 120 then
			eCoolDW = eCoolDW + dt * 70
		else
			eCoolDW = 120
		end

		if love.keyboard.isDown("space") then
			if eCoolDW==120 then
				if love.keyboard.isDown("right") then
					if player.x < 800 - player.w then
						player.x = player.x + 80
					end
				end
				if love.keyboard.isDown("left") then
					if player.x > 0 then
						player.x = player.x - 80
					end	
				end
				if love.keyboard.isDown("up") then
					if player.y > 25 then
						player.y = player.y - 80
					end
				end
				if love.keyboard.isDown("down") then
					if player.y < 600 - player.h then
						player.y = player.y + 80
					end
				end
			eCoolDW = 1
			end
		end

		if distancia(player.x , player.y , itemX , itemY ) < shieldR - 5 then
			itemX = love.math.random(0,800 - player.w)
			itemY = 800
			playerPLife = playerPLife + 0.2
		end

		if itemY < 25 then 
			itemX = love.math.random(0,800 - player.w)
			itemY = 600 - itemH
		end 

		if itemSY < 25 then 
			itemSX = love.math.random(0,800 - player.w)
			itemSY = 600 - itemSH
		end

		if playerPLife==1 then
			playerLife = playerLife + 1
			playerPLife = 0
			musicaVida:play()
		end

		if distancia(player.x , player.y , itemSX , itemSY ) < shieldR - 5 then
			itemSX = love.math.random(0,800 - player.w)
			itemSY = 800
			shield = true
			musicaShield:play()
		end
	
		if distancia(player.x , player.y , inimigo.x , inimigo.y) < shieldR - 5 then
			if shield then 
				shield = false
				inimigo.y = love.math.random(100,500 - inimigo.h)
				inimigo.x = 0
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo.y = love.math.random(100,500 - inimigo.h)
					inimigo.x = 0
					audioDano:play()
					
				end
			end
		end
		if distancia(player.x , player.y , inimigo2.x , inimigo2.y) < shieldR - 5 then
			if shield then 
				shield = false
				inimigo2.y = love.math.random(100,500 - inimigo2.h)
				inimigo2.x = 800
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo2.y = love.math.random(100,500 - inimigo2.h)
					inimigo2.x = 800
					audioDano:play()
				end
			end
		end
		if distancia(player.x , player.y , inimigo3.x + 30, inimigo3.y ) < shieldR  then
			if shield then 
				shield = false
				inimigo3.x = love.math.random(50,400)
				inimigo3.y = 800
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo3.x = love.math.random(50,400)
					inimigo3.y = 800
					audioDano:play()
				end
			end
		end
		if distancia(player.x , player.y , inimigo4.x + 30 , inimigo4.y ) < shieldR  then
			if shield then 
				shield = false
				inimigo4.x = love.math.random(10,300)
				inimigo4.y = 800
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo4.x = love.math.random(10,300)
					inimigo4.y = 800
					audioDano:play()
				end
			end
		end
		if distancia(player.x , player.y , inimigo5.x + 60, inimigo5.y ) < shieldR  then
			if shield then 
				shield = false
				inimigo5.x = love.math.random(250,650)
				inimigo5.y = 800
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo5.x = love.math.random(250,650)
					inimigo5.y = 800
					audioDano:play()
				end
			end
		end
		if distancia(player.x , player.y , inimigo6.x + 60, inimigo6.y ) < shieldR   then
			if shield then 
				shield = false
				inimigo6.x = love.math.random(350,790)
				inimigo6.y = 800
				itemSX = love.math.random(0,800 - itemSW)             
				itemSY = 600
				audioDano:play()
			elseif shield==false then
				playerLife = playerLife - 1
				if playerLife>0 then
					inimigo6.x = love.math.random(350,790)
					inimigo6.y = 800
					audioDano:play()
				end
			end
		end

		if distancia(player.x , player.y , moeda.x , moeda.y ) < shieldR then
			score = score + 1
			moeda.x = love.math.random(15,780)
			moeda.y = 800
			moedaA:play()
		end

		if playerLife<=0 then
			audioDano:play()
			gameState = "morto"
			inimigo.y = love.math.random(100,500 - inimigo.h)
			inimigo.x = 0
			inimigo2.y = love.math.random(100,500 - inimigo2.h)
			inimigo2.x = 800
			inimigo3.x = love.math.random(50,400)
			inimigo3.y = 800
			inimigo4.x = love.math.random(10,300)
			inimigo4.y = 800
			inimigo5.x = love.math.random(250,650)
			inimigo5.y = 800
			inimigo6.x = love.math.random(350,790)
			inimigo6.y = 800
			itemX = love.math.random(0,800 - itemW)
			itemY = 600 
			itemSX = love.math.random(0,800 - itemSW)          
			itemSY = 600
			moeda.x = love.math.random(15,780)
			moeda.y = 800
			ScoreAnterior = score
			if ScoreAnterior>ScoreMax then
				ScoreMax=ScoreAnterior
			end
			score = 0
			love.audio.stop()
		end
		if timer>30 then
			audioGO = love.audio.newSource("Audio/gameover.mp3","stream")
		end
	end
	if gameState=="morto" then
		audioGO:play()
		if love.keyboard.isDown("x") then
			love.audio.stop()
			gameState="title"
		end
	end
end

function love.draw()

	if gameState == "title" then
		love.graphics.setFont(fonteM)
		love.graphics.print("Pressione Return para começar",10,500)
		love.graphics.print("Score anterior: "..ScoreAnterior)
		love.graphics.print("Maior Score: "..ScoreMax,0,20)
	elseif gameState=="instruções" then
		love.graphics.print("Lore")
		love.graphics.print("Você é o piloto de uma nave e estava explorando um planeta novo cuja atmosfera tem",0,20) 
		love.graphics.print("proporções absurdas.",0,40)
		love.graphics.print("De repente esse planeta é invadido por aliens e uma guerra se inicia. ",0,60)
		love.graphics.print("Sua nave é destruída e agora você precisa sobreviver e recuperar a carga perdida",0,80)
		love.graphics.print("Use as setas para se locomover",0,430)
		love.graphics.print("Use a tecla espaço para evasão, somente quando a barra estiver cheia",0,450)
		love.graphics.print("Os diamantes concedem escudo",0,470)
		love.graphics.print("As cápsulas concedem fragmentos de vida, colete 5 para completar uma vida extra",0,490)
		love.graphics.print("Cuidado com as naves e raios, eles são letais",0,510)
		love.graphics.print("Pressione X para começar",300,550)

	elseif gameState=="play" then
		love.graphics.setColor(1,1,1,0.8)
		love.graphics.draw(background)

		love.graphics.setColor(1,1,1)
		love.graphics.setFont(fonteS)
		love.graphics.print("Vida: "..playerLife.."    Tempo: "..math.floor(timer).."      Cooldown da evasão: ")
		love.graphics.print("Score atual: "..score , 15,570)

		love.graphics.setColor(1,1,1)
		love.graphics.draw(nuvem1, nuvemA1x, nuvemAy, math.rad(0), 1 , 1)
		love.graphics.draw(nuvem4, nuvemA2x, nuvemAy, math.rad(0), 0.8 , 0.8)
		love.graphics.draw(nuvem7, nuvemA3x, nuvemAy, math.rad(0), 0.6 , 0.6)
		love.graphics.draw(nuvem2, nuvemB1x, nuvemBy, math.rad(0), 0.5 , 0.5)
		love.graphics.draw(nuvem5, nuvemB2x, nuvemBy, math.rad(0), 0.4 , 0.4)
		love.graphics.draw(nuvem3, nuvemC1x, nuvemCy, math.rad(0), 0.4 , 0.4)
		love.graphics.draw(nuvem8, nuvemB3x, nuvemBy, math.rad(0), 0.3 , 0.3)
		love.graphics.draw(nuvem6, nuvemC2x, nuvemCy, math.rad(0), 0.2 , 0.2)		
		love.graphics.draw(nuvem9, nuvemC3x, nuvemCy, math.rad(0), 0.1 , 0.1)


		love.graphics.draw(cura, itemX, itemY , math.rad(0), 0.2 , 0.2 )
		
		if shield then
			love.graphics.setColor(1,1,1)
			love.graphics.draw(estado, player.x - 35, player.y - player.h / 1.65 , math.rad(0),0.25, 0.25)
			love.graphics.setColor(1,1,1)
			love.graphics.draw(shieldI, player.x - 35 , player.y - player.h / 1.65, math.rad(0),0.15,0.14)
		elseif shield==false then
			love.graphics.setColor(1,1,1)
			love.graphics.draw(estado, player.x - 30 , player.y - player.h / 1.65, math.rad(0),0.25, 0.25)
			love.graphics.setColor(1,1,1)
			love.graphics.draw(itemEscudo, itemSX , itemSY , math.rad(0), 1 ,1)
		end

		love.graphics.setColor(1,1,1)
		love.graphics.rectangle("fill", eCoolDX , eCoolDY , eCoolDW , eCoolDH)
		
		love.graphics.draw(nave1,inimigo.x , inimigo.y , math.rad(0),1.5,1.5)

		love.graphics.draw(nave2,inimigo2.x , inimigo2.y , math.rad(0),1.5,1.5)

		love.graphics.setColor(1,1,1)
		love.graphics.draw(raioBase, inimigo3.x - 10 , inimigo3.y - 10 , math.rad(0),0.3, 0.3 )
		love.graphics.draw(raioBase, inimigo4.x - 10 , inimigo4.y - 10 , math.rad(0),0.3, 0.3 )
		love.graphics.draw(raioBase, inimigo5.x - 10 , inimigo5.y - 10 , math.rad(0),0.5, 0.5 )		
		love.graphics.draw(raioBase, inimigo6.x - 10 , inimigo6.y - 10 , math.rad(0),0.5, 0.5 )

		love.graphics.setColor(1,1,1)
		love.graphics.draw(moedaPNG, moeda.x , moeda.y , math.rad(0), 0.08 , 0.1)
		
	end

	if gameState=="morto" then
		love.graphics.draw(gameOver)
		love.graphics.print("Pressione x para voltar ao menu principal",0,570)	
	end
end	

function distancia(x1,y1,x2,y2)
	return math.sqrt((y2-y1)^2 + (x2-x1)^2)
end



