
function Wordload()
	
	background=love.graphics.newImage("Imagens/Fundo.png")
	background2=love.graphics.newImage("Imagens/Fundo.png")
	piso=love.graphics.newImage("Imagens/mud.png")
	Wordx=0
    Wordx2= Wordx - background:getWidth()
    Wordvel=300
   

	
	
	
	
end

function Wordupdate(dt)
	  Wordx=(Wordx-Wordvel *dt)
     Wordx2=(Wordx2-Wordvel *dt)
    -- Wordx3=(Wordx3-Wordvel *dt)
     --Wordx4=(Wordx4-Wordvel *dt)
        
    
    if Wordx<-800 then
        Wordx=Wordx2 +  background:getWidth()
    end

    if Wordx2<-800 then
        Wordx2=Wordx + background:getWidth()
    end
  
		
end

function Worddraw()
	if Vivo then
		love.graphics.draw(background,Wordx,0)
    	love.graphics.draw(background2,Wordx2,0)
		love.graphics.draw(piso,0,580)
	end
end

