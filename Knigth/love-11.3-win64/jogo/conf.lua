function love.conf (t)
	t.identity = nil   --local para salve
	t.version =  "11.3"  --config para windows
	t.console=false --dbug
	t.accelerometerjoystick=true
	t.externalstorage=false
	t.gammacorrect=false

	t.window.title="Knight"
	t.window.icon= nil
	t.window.width=800
	t.window.height=600
	t.window.borderless=false --borda
	t.window.resizable = false
	t.window.minwidth = 1
	t.window.minheight = 1
	t.window.fullscreen = false
	t.window.fullscreentype = "desktop"
	t.window.vsync = 1 
	t.window.msaa = 0    
	t.window.display = 1   
	t.window.highdpi = false
	t.window.x = nil
	t.window.y = nil  
	--recursos
	t.modules.audio = true 
	t.modules.data = true
	t.modules.event = true
	t.modules.font = true 
 	t.modules.graphics = true
	t.modules.image = true
	t.modules.joystick = true 
	t.modules.keyboard = true
	t.modules.math = true
	t.modules.mouse = true
	t.modules.physics = true  
	t.modules.sound = true 
	t.modules.system = true 
	t.modules.timer = true 
	t.modules.touch = true 
	t.modules.video = true 
	t.modules.window = true 
	t.modules.thread = true   
end            