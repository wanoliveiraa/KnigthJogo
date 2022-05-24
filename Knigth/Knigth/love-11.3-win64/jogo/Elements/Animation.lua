function newAnimation(image, width, height, duration)
    local animation = {}
    animation.spriteSheet = image;
    animation.quads = {};
 
    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end
 
    animation.duration = duration or 1
    animation.currentTime = 0
 
    return animation
end

function newAnimation1(image, width, height, duration)
    local moedasimg = {}
    moedasimg.spriteSheet = image;
    moedasimg.quads = {};
 
    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(moedasimg.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end
 
    moedasimg.duration = duration or 1
    moedasimg.currentTime = 0
 
    return moedasimg
end

function newAnimation2(image, width, height, duration)
    local darkini = {}
    darkini.spriteSheet = image;
    darkini.quads = {};
 
    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(darkini.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end
 
    darkini.duration = duration or 1
    darkini.currentTime = 0
 
    return darkini
end





function Animationupdate( dt )
    --animação
    animation.currentTime = animation.currentTime + dt
    if animation.currentTime >= animation.duration then
        animation.currentTime = animation.currentTime - animation.duration    
    end
    --animação
    moedasimg.currentTime = moedasimg.currentTime + dt
    if moedasimg.currentTime >= moedasimg.duration then
        moedasimg.currentTime = moedasimg.currentTime - moedasimg.duration    
    end

    darkini.currentTime = darkini.currentTime + dt
    if darkini.currentTime >= darkini.duration then
      darkini.currentTime = darkini.currentTime - darkini.duration    
     end

     flyini.currentTime = flyini.currentTime + dt
    if flyini.currentTime >= flyini.duration then
      flyini.currentTime = flyini.currentTime - flyini.duration    
     end

    
end