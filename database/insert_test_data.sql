/* ******************************************************
Insert test data into the recipes_and_ingredients database.
********************************************************/

USE recipes_and_ingredients;

-- Insert data into the recipes table.

INSERT INTO recipes (recipe_name, recipe_cuisine, recipe_servings)
VALUES ('BBQ and Sweet Potatoes', 'Southern', 2);
INSERT INTO recipes (recipe_name, recipe_cuisine, recipe_servings)
VALUES ('Taco Lime Chicken', 'Southwestern', 2);
INSERT INTO recipes (recipe_name, recipe_cuisine, recipe_servings)
VALUES ('Easy Chilli', 'Tex-Mex', 4);

/*Insert data into the ingredients table. */

INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('sweet potatoes', 'medium', 2);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('chicken_breasts', 'lb', 1);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('BBQ Sauce', 'cups', 0.333);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('taco seasoning', 'tablespoons', 2);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('lime juice', 'cups', 0.25);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('pork loin', 'lb', 1);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('chilli beans', 'cups', 1);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('diced tomatoes', 'cups', 1);
INSERT INTO ingredients (ingredient_name, ingredient_unit, ingredient_qty)
    values ('ground beef', 'lb', 1);

/* Insert data into the recipes_ingredients_xref table. */

-- Insert data into the recipes_ingredients_xref table.

INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(1, 1, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(1, 2, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(2, 4, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(2, 5, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(2, 6, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(3, 7, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(3, 8, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
INSERT INTO recipes_ingredients_xref (recipe_id, ingredient_id, purchase_date, expiration_date, status)
    VALUES(3, 9, '2025-09-15 00:00:00', '2026-09-20 00:00:00', 'On Hand');
    