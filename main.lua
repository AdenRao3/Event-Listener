-----------------------------------------------------------------------------------------
--
-- main.lua
--
--This program puts a colored background on the screen and an interactive image
--
--Created By: Aden Rao
--Created On: 2019/02/13
--
-----------------------------------------------------------------------------------------
display.setDefault( "background", 255, 0, 0 )

local soccerBall = display.newImageRect( "assets/ball.png", 250, 250 )
soccerBall.x = 165
soccerBall.y = 250
soccerBall.id = "soccer ball"
 
local function onObjectTouch( event )
    if ( event.phase == "began" ) then
        print( "You touched the soccer ball" )
    end
    return true
end
soccerBall:addEventListener( "touch", onObjectTouch )




