-- https://pastebin.com/bek5HnUC --

turtle.refuel()

local x = 10
local y = 2
local z = 10

local i = 1
local args = {...}

--- GET X AND Z --

if (args[1] ~= nil) then
    x = args[1]
    z = args[2]
end

for a = 1, z, 1 do
    for b = 1, x - 1, 1 do
        while(turtle.detect()) do
            turtle.dig()
            sleep(0.25)
        end
        
        turtle.forward()

    end

    if (i == 1) then
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()

        i = 2
    elseif (i == 2) then
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()

        i = 1
    end

    
end

print("Mining a " .. x .. "x" .. z .. " area, with a depth of " .. y)