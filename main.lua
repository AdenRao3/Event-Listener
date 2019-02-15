-----------------------------------------------------------------------------------------
--
-- main.lua
--
--This program puts a colored background on the screen and an image which prints something to the console when you touch it and it also print text on screen. Also my name is on the screen
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

local myText = display.newText( "Aden Rao", 160, 100, native.systemFont, 50 )

local function onObjectTouch( event )
    if ( event.phase == "began" ) then
        print( "You touched the ball")
        local myText = display.newText( "You touched the ball", 160, 375, native.systemFont, 25 )
        display.setDefault( "background", 135/255, 89/255, 200/255 )
    end
    return true
end
soccerBall:addEventListener( "touch", onObjectTouch )




