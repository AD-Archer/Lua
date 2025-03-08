-- todo list

todo = {}

function add_todo()
    io.write("Enter a new todo: ")
    local new_todo = io.read()
    table.insert(todo, new_todo)
end

function printList()
    -- Print the todo list to verify the addition
    for i, v in ipairs(todo) do
        print(i .. ": " .. v) -- .. is string combing
    end
end

running = true
while running do
    print("Would you like to \n 1. Add a new todo \n 2. Print all todos \n 3. End")
    io.write("Please enter a number: ")
    local choice = tonumber(io.read())

    if choice == 1 then
        add_todo()
    elseif choice == 2 then
        printList()
    elseif choice == 3 then
        running = false
        printList()
    else
        print("Invalid input, please try again")
    end
end





