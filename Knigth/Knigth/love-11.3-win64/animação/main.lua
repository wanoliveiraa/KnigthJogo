
function love.load()
   love.graphics.setDefaultFilter("nearest","nearest")
    background=love.graphics.newImage("Fundo.png")
    background2=love.graphics.newImage("Fundo.png")
    background3=love.graphics.newImage("Fundo.png")
    background4=love.graphics.newImage("Fundo.png")
    Wordx=0
    Wordx2= Wordx + 500
    Wordx3=Wordx + Wordx2 +500
    Wordx4=Wordx3+500
    Wordvel=300
   


end
 
function love.update(dt)    
    Wordx=(Wordx-Wordvel *dt)
     Wordx2=(Wordx2-Wordvel *dt)
     Wordx3=(Wordx3-Wordvel *dt)
     Wordx4=(Wordx4-Wordvel *dt)
        
    

    if Wordx<-500 then
        Wordx=Wordx4 + 500
    end
    if Wordx2<-500 then
        Wordx2=Wordx + 500
    end
    if Wordx3<-500 then
        Wordx3=Wordx2 + 500
    end
    if Wordx4<-500 then
        Wordx4=Wordx3 + 500
    end

end
 
function love.draw()
  love.graphics.rectangle("fill", 800, 0, 1, 900)
    love.graphics.draw(background,Wordx,0,0,3.7,3.7)
    love.graphics.draw(background2,Wordx2,0,0,3.7,3.7)
    love.graphics.draw(background3,Wordx3,0,0,3.7,3.7)
    love.graphics.draw(background4,Wordx4,0,0,3.7,3.7)
end