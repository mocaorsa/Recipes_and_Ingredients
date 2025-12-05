import ingredient_parser
import json

recipe_database = {}

def add_recipe():
    """Prompt user to add a recipe and parse ingredients."""
    recipe_name = input("Enter the recipe name: ")
    ingredients_input = input("Enter the ingredients one by one (e.g. '2 cups flour, sifted. Type 'done'when finished): ")
    while True:
        line = input(f"Ingredient for ''{recipe_name}': ")
        if line.lower() == 'done':
            break
        ingredients_input.append(line)

    parsed_ingredients = []
    for ingredient_str in ingredients_input:
        parser = ingredient_parser.IngredientParser()
        parsed = parser.parse_ingredient(ingredient_str)
        parsed_data = parser.to_json()
        parsed_ingredients.append(parsed_data)
        print(f" Parsed:Quantity: {parsed['quantity']}, Unit: {parsed['unit']}, Name: {parsed['name']}, Preparation: {parsed['preparation']}")
    recipe_database[recipe_name] = parsed_ingredients
    print(f"Recipe '{recipe_name}' added to the database.")
def save_database_to_file(filename='recipe_database.json'):
    """Save the recipe database to a JSON file."""
    with open(filename, 'w') as f:
        json.dump(recipe_database, f, indent=4)
    print(f"Recipe database saved to '{filename}'.")        
def load_database_from_file(filename='recipe_database.json'):
    """Load the recipe database from a JSON file."""
    global recipe_database
    try:
        with open(filename, 'r') as f:
            recipe_database = json.load(f)
        print(f"Recipe database loaded from '{filename}'.")
    except FileNotFoundError:
        print(f"No existing database found at '{filename}'. Starting with an empty database.")
def main():
    """Main function to run the recipe ingredient parser application."""
    load_database_from_file()
    while True:
        action = input("Choose an action: (1) Add Recipe, (2) Save Database, (3) Load Database, (4) Exit: ")
        if action == '1':
            add_recipe()
        elif action == '2':
            save_database_to_file()
        elif action == '3':
            load_database_from_file()
        elif action == '4':
            print("Exiting the application.")
            break
        else:
            print("Invalid option. Please try again.")