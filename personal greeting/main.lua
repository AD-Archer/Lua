-- personal greeting

-- Here’s a breakdown of the task:
-- Prompt the user for their name.
-- Prompt the user for their age.
-- Calculate what their age will be next year.
-- Display a message with their name and next year's age.

io.write("Please enter your name friend: ")
name = io.read()

print("Hello " .. name)

io.write("How old are you " .. name .. "? ")
age = tonumber(io.read())

print("Niceeeeee so that means you will be " .. tostring(age + 1) .. " next year?")