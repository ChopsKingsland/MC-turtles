-- https://pastebin.com/bek5HnUC --

turtle.refuel()

local x = 10
local y = 2
local z = 10

local i = 1
local l = 1

local args = {...}

--- GET X, Y & Z --

if (#args == 3) then
    x = args[1]
    y = args[2]
    z = args[3]
end

-- THE LOOP --

print("Mining a " .. x .. "x" .. z .. " area, with a depth of " .. y)

for c = 1, y, 1 do
    for a = 1, z, 1 do
        for b = 1, x - 1, 1 do
            while(turtle.detect()) do
                turtle.dig()
                sleep(0.25)
            end

            turtle.forward()

        end

        if (l == 1) then
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

            -- l = 2
        elseif (l == 2) then
            if (i == 2) then
                turtle.turnRight()
                turtle.dig()
                turtle.forward()
                turtle.turnRight()
        
                i = 1
            elseif (i == 1) then
                turtle.turnLeft()
                turtle.dig()
                turtle.forward()
                turtle.turnLeft()
        
                i = 2
            end

            -- l = 1
        end

        -- if (a == z) then
            
        -- else
            
        -- end
    end

    if (l == 1) then
        l = 2
    elseif (l == 2) then
        l = 1
    end

    while(turtle.detectDown()) do
        turtle.digDown()
        sleep(0.25)
    end

    turtle.down()
    turtle.turnRight()
    turtle.dig()
    turtle.forward()
    turtle.turnLeft()


    -- change direction needed here --

end

