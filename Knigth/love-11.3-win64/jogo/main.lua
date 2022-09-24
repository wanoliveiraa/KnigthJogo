require("Elements/Menu")
require("Elements/Word")
require("Elements/Pontos")
require("Elements/Collision")
require("Elements/Player")
require("Elements/Dark")
require("Elements/Fly")
require("Elements/Moedas")
require("Elements/Gameover")
require("Elements/Animation")
require("Elements/Life")
	
	Vivo=true
	gameover=true
	gamestatus="menu"
	music=true
	musicpulo=true
	musicstar=true
	musicgameover=true
	musicstar=love.audio.newSource("Music/Invincible Bgm.mp3","static") 
	musicdeath=love.audio.newSource("Music/Lose5.mp3","static")
	musiccoins=love.audio.newSource("Music/Coin.mp3","static")
	musicgameover=love.audio.newSource("Music/Game Over.mp3","static")
	alturaTela=love.graphics.getHeight()
	larguraTela=love.graphics.getWidth()


function love.load()	
	Menuload( )
	if music then
		musictheme=love.audio.newSource("Music/knight of aces.mp3","static")
		musictheme:play()
		musictheme:setLooping( true )
		Wordload()
		Carregadorload( )
		Flyload()
		Playerload( )
		Darkload()
		Moedasload()
	
	end

	
	
	
end

function love.update(dt)
		Menuupdate(dt)
	if gamestatus==true then
		Wordupdate(dt)
		Animationupdate( dt )
		Moedasupdate(dt)
		Flyupdate(dt)
		PontosUpdate(dt)
		Playerupdate(dt)
		Darkupdate(dt)
		Colisaoupadate(dt)
		Gameoverupadate()
	end

end


function love.draw()
	if gamestatus=="menu"then
		Menudraw()
	end
	if gamestatus==true  then
		Worddraw()
		Playerdraw()
		Carregadordraw( )
		Flydraw()
		PontosDraw()
		Moedasdraw()
		Drakdraw()
		Gameoverdraw()
	end

end

