


function Playerload( )
	-- Define o Player
	anima=false
	animation=newAnimation(love.graphics.newImage("Imagens/P1.png"),26,41,0.4)
	Player={}
	Player.x=0
	Player.y=490
	Player.h=70
	Player.l=41
	Player.speed=330
	Player.up=0
	AlturaPulo = 25
	Gravidade=100
	Ponto=0
end


function Playerupdate(dt ) 
	if Vivo then
		--para o saltar
	    if Player.up ~= 0 then
	        Player.y = Player.y - Player.up
	        Player.up = Player.up - Gravidade*dt
	            if Player.y > 490 then
	                Player.up = 0
	                Player.y = 490
	            end
	    end
		--Movimentação do Player
		if love.keyboard.isDown("a") then 
			Player.x=Player.x - Player.speed*dt 
		end 
		if love.keyboard.isDown("d") then 
			Player.x=Player.x + Player.speed *dt 
		end 	
		--Impedir o Player sair da tela 
		if Player.y<Player.h then
	 		Player.y=Player.h
		end 
		if Player.x<Player.l  then 
			Player.x=Player.l 
		end
		if Player.y > alturaTela - Player.h then
			 Player.y=alturaTela - Player.h
		end
		if Player.x> larguraTela - Player.l then
			 Player.x=larguraTela - Player.l
		end
	end
end

function Playerdraw()
	if Vivo then
		 local spriteNum = math.floor(animation.currentTime / animation.duration * #animation.quads) + 1
    	love.graphics.draw(animation.spriteSheet, animation.quads[spriteNum], Player.x, Player.y, 0, 2.5)
    	--love.graphics.rectangle("line",Player.x,Player.y,Player.l,Player.h)
	end
end


function love.keypressed(key)
    if key == "w" then
    	if musicpulo then
    		love.audio.play(love.audio.newSource( "Music/Jump.mp3", "static" ))
    	end
       
       if Player.up == 0 then
            Player.up = AlturaPulo
        end
    
    end
end
