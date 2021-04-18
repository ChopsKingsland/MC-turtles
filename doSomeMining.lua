-- https://pastebin.com/bek5HnUC --

turtle.refuel()

local x = 10
local y = 2
local z = 10

local i = 1
local args = {...}

--- GET X, Y & Z --

if (args[1] ~= nil) then
    x = args[1]
    y = args[2]
    z = args[3]
end

-- THE LOOP --

for c = 1, y, 1 do
    for a = 1, z, 1 do
        for b = 1, x - 1, 1 do
            while(turtle.detect()) do
                turtle.dig()
                sleep(0.25)
            end

            turtle.forward()

        end

        if (a == z) then
            
        else
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
    end

    while(turtle.detectDown()) do
        turtle.digDown()
        sleep(0.25)
    end

    turtle.down()

    -- change direction needed here --

end

print("Mining a " .. x .. "x" .. z .. " area, with a depth of " .. y)