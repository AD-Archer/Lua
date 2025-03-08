-- Define a table (dictionary) to store recipes.
-- Each key will be a recipe name, and each value will be a list (array) of ingredients.

-- Define a list (array) of allergens that we want to check for in the recipes.

-- Create a function to check if any recipe contains an allergen.
-- This function will:
-- 1. Loop through each recipe in the recipes table.
-- 2. Loop through the list of ingredients for the current recipe.
-- 3. Loop through the list of allergens.
-- 4. If an ingredient matches an allergen, print a warning message.

-- Call the function to check for allergens in the recipes.

recipes = { -- remember you need to use the [] for keys, and the {} for values
    ["Chicken Marsala"] = {"chicken", "olive oil", "flour", "mushrooms", "garlic", "Marsala wine", "chicken broth", "heavy cream"},
    ["Chicken Piccata"] = {"chicken", "olive oil", "flour", "lemon juice", "capers", "butter", "chicken stock"},
    ["Chicken Pad Thai"] = {"rice noodles", "chicken", "soy sauce", "fish sauce", "palm sugar", "tamarind paste", "peanuts", "eggs", "carrots", "bell peppers", "bean sprouts", "onions"},
    ["Yellow Chicken Curry"] = {"rice", "chicken", "yellow curry paste", "onion", "potatoes", "coconut milk"},
    ["Chicken Adobo"] = {"rice", "chicken", "vinegar", "soy sauce", "garlic", "black peppercorns", "bay leaves"}
}

allergens = {'eggs', 'capers', 'peanuts'}

function check_allergens()
    for recipe, ingredients in pairs(recipes) do -- we declare ingredient inside this right, im assuming its a local variable but im unsure currently
        for _, ingredient in ipairs(ingredients) do -- the underscore acts as a placeholder variable so we don't loop over things we're not using
            for _, allergen in ipairs(allergens) do -- so basially for every ingredient in ingredients(line above) we find every allergen in allergens, and 
                if ingredient == allergen then --if an ingredient in ingredients then we print
                    print("It appears there is an allergen. " .. allergen .. " is in " .. recipe)
                end
            end
        end
    end
end

-- check_allergens()

-- Lets try to remake this so we can pass in any recipe and any allergens array? or list? i forgot what the datatype is called

function check_allergens_2(food_recipes, allergens_list)
    for food_recipe, food_recipes_ingredients in pairs(food_recipes) do -- don't forget the do
        for _, food_recipes_ingredient in ipairs(food_recipes_ingredients) do 
            for _, allergens_in_allergens_list in ipairs(allergens_list) do
                if food_recipes_ingredient == allergens_in_allergens_list then -- do not forget do 
                    print("It appears there is an allergen. " .. allergens_in_allergens_list .. " is in " .. food_recipe)
                end
            end
        end
    end
end

check_allergens_2(recipes, allergens)