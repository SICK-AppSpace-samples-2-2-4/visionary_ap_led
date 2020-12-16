--[[----------------------------------------------------------------------------

  Controlling the LED on Visionary-T AP device

------------------------------------------------------------------------------]]

-- The application LED is the LED on the right side
-- Device LED is not controllable from the application
local appLED = LED.create("APPLICATION_LED")
-- Set the color of the LED before activating it
-- Supported colors are: red, yellow, green, white, aqua, fuchsia and blue
LED.setColor(appLED,"blue")

local function main()
  -- Activating a LED will turn it on with a constant light
  LED.activate(appLED)
  Script.sleep(5000)

  -- The LED can also be set to blink at a specific rate
  LED.blink(appLED, 500, 200)
  -- The LED keeps blinking even when the script pauses
  Script.sleep(5000)
  
  -- The LED color can be set at any time
  LED.setColor(appLED, "green")
end
--Registration of the 'main' function to the 'Engine.OnStarted' event
Script.register("Engine.OnStarted", main)
