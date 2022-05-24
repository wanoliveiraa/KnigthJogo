function Wordload()
	word=newAnimation3(love.graphics.newImage("Imagens/Background.png"),961,224,10)
	word2=newAnimation3(love.graphics.newImage("Imagens/Background.png"),961,224,10)
	Word={}
	Word.x=0
	Word.y=500
	Word.l=larguraTela
	Word.h=700
	--love.graphics.getBackgroundColor(0,0,255)
	
end

function Wordupdate(dt )
		
end

function Worddraw()
	 local spriteNum = math.floor(word.currentTime / word.duration * #word.quads) + 1
    	love.graphics.draw(word.spriteSheet, word.quads[spriteNum], Word.x, 0, 0, 2.7)
    	local spriteNum = math.floor(word2.currentTime / word2.duration * #word2.quads) + 1
    	love.graphics.draw(word2.spriteSheet, word2.quads[spriteNum], Word.x, 0, 0, 2.7)

	--love.graphics.rectangle("line",Word.x,Word.y,Word.l,Word.h)
	

end
function newAnimation3(image, width, height, duration)
    local word = {}
    word.spriteSheet = image;
    word.quads = {};
 
    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(word.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end
 
    word.duration = duration or 1
    word.currentTime = 0
 
    return word
end
word.currentTime = word.currentTime + dt
    if word.currentTime >= word.duration then
      word.currentTime = word.currentTime - word.duration    
     end
