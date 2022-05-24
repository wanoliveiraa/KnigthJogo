--TEMPORARIO
	
function Gameoverlaod()
	imggame=love.graphics.newImage("Imagens/gameover.png")
end

function Gameoverupadate( )
	if not Vivo and love.keyboard.isDown( "space" ) then
			 love.event.quit(0)
	end
	if  not  Vivo and love.keyboard.isDown( "r" ) then
			Dark={}
			TimeCriarDark=DelayDark
			Fly={}
			TimeCriarFly=DelayFly
			Player.x=0
			Player.y=490
			Vivo=true
			Darkspeed=200
			Ponto=0
			Moedass=0
			Moedas={}
			TempoCriarMoedas = DelayMoedas
			delayMoedas =1
			SpeedMoedas = 100
			Tempo=0
			Carregador=0
			musictheme:play()
			musictheme:setLooping( true )
			musicgameover:stop()
			
			--gamestatus="menu"
		end
end

function Gameoverdraw( )
	if  not Vivo then
		love.graphics.setFont(love.graphics.newFont("Font/game_over.ttf",72))
		--love.graphics.setColor(0.4,0.4,0.5,1)
		love.graphics.print("Voce Perdeu",100,50)
		love.graphics.print("Aperte 'r' para continuar",200,100)
		love.graphics.print("Ou",300,150)	
		love.graphics.print("Aperte 'space' para sair",400,200)		
		musicgameover:play()
	end
	

end