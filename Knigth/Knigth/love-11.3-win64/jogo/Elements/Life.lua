

function Carregadorload( )
	lifevazio=love.graphics.newImage("Imagens/powerupvazio.png")
	lifecheio=love.graphics.newImage("Imagens/powerupcheio.png")
	Carregador=0
	
end 
function Carregadorupadate(dt) 
	
end 
function Carregadordraw( )
if Vivo then
	love.graphics.draw(lifevazio,500,20,0,1,1,lifevazio:getWidth()/2,lifevazio:getHeight()/2)
	love.graphics.draw(lifecheio,500,20,0,Carregador,Carregador,lifecheio:getWidth()/2,lifecheio:getHeight()/2)
end
end 