/* ******************************************
 Drop and create the employee_training_user
********************************************/
-- Drop user if exists
DROP USER IF EXISTS 'recipes_and_ingredients_user'@'%';

-- Create user if not exists
CREATE USER IF NOT EXISTS 'recipes_and_ingredients_user'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON `recipes_and_ingredients`.* TO 'recipes_and_ingredients_user'@'localhost'; ALTER USER 'recipes_and_ingredients_user'@'localhost' ;

FLUSH PRIVILEGES;