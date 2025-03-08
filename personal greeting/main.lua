-- personal greeting

-- Here’s a breakdown of the task:
-- Prompt the user for their name.
-- Prompt the user for their age.
-- Calculate what their age will be next year.
-- Display a message with their name and next year's age.

io.write("Please enter your name friend: ")
name = io.read()

print("Hello " .. name)

local age
while true do
    io.write("How old are you " .. name .. "? ")
    age = tonumber(io.read())
    if age then
        break
    else
        print("Please enter a valid number for your age.")
    end
end

print("Niceeeeee so that means you will be " .. tostring(age + 1) .. " next year?")