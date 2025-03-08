-- Function to perform the calculation
function calculate(num1, num2, operation)
    if operation == "+" then
        return num1 + num2
    elseif operation == "-" then
        return num1 - num2
    elseif operation == "*" then
        return num1 * num2
    elseif operation == "/" then
        if num2 == 0 then
            return "Error: Division by zero!"
        else
            return num1 / num2
        end
    else
        return "Invalid operation!"
    end
end

-- Main program
print("Enter the first number:")
local num1 = tonumber(io.read())

print("Enter the second number:")
local num2 = tonumber(io.read())

print("Choose an operation (+, -, *, /):")
local operation = io.read()

local result = calculate(num1, num2, operation)

print("Result: " .. result)
