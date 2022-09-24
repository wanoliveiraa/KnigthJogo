posx = 350
posy = 205

posxbutton = 300
posybutton = 200


altura = 60
largura = 250

Button={} 
Color={0.4,0.4,0.5,1}
gamestatus=false

--love.graphics.getBackgroundColor(0,2,0)
function Menuload( )

end
function Menuupdate(dt)
      if love.mouse.isDown(1) and buttonStart  then
                gamestatus=true
            end
            if love.mouse.isDown(1) and buttonExit  then
                love.event.quit(0)
            end
 end

function Menudraw()
    --love.graphics.getBackgroundColor(0,2,0)
    buttonStart= love.mouse.getX() > 300 and love.mouse.getY() > 200 and love.mouse.getX() < 700 and love.mouse.getY() < 460
    buttonExit=  love.mouse.getX() > 300 and love.mouse.getY() > 270 and love.mouse.getX() < 700 and love.mouse.getY() < 470
        love.graphics.setColor(0,0,0)
        love.graphics.setFont(love.graphics.newFont("Font/game_over.ttf",72))
         love.graphics.setColor(0,0,0)
        love.graphics.rectangle("fill" ,posxbutton,posybutton,largura,altura)
        love.graphics.setColor(0,0,0)
        love.graphics.rectangle("fill" ,posxbutton,posybutton+70,largura,altura)
        love.graphics.setColor(255,255,255)
        love.graphics.print("Knigth",350,0)
        love.graphics.setColor(255,255,255)
        love.graphics.print("Start",posx,posy)
        love.graphics.setColor(255,255,255)
        love.graphics.print("Exit",posx,posy+70)

          
end