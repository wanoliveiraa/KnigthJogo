
function PontosLoad()
    
end

function PontosUpdate(dt)
    if Vivo then
    		Ponto = Ponto + 0.1
    	end
	end
function PontosDraw()
	if Vivo then
   love.graphics.setFont(love.graphics.newFont("Font/game_over.ttf",36))
    --love.graphics.setColor(corElement)
    love.graphics.print("PONTOS: "..math.floor(Ponto), 100,10)
    love.graphics.print("MOEDAS: "..math.floor(Moedass), 200, 10)
    love.graphics.print("INVENCIBILIDADE:", 290, 10)
   end
end