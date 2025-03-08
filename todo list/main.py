# todo list

todo_list = []
running = True

def add_todo():
    todo = input("Enter a new todo: ")
    todo_list.append(todo)


while running:
    print("1. Add a new todo")
    print("2. Print all todos")
    print("3. Exit")
    choice = input("Enter your choice: ")

    if choice == "1":
        add_todo()
    elif choice == "2":
        print(todo_list)
    elif choice == "3":
        running = False
    else:
        print("Invalid choice")

