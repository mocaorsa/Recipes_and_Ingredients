


/* *************************************************************
Drop and Create the tables for the recipes_and_ingredients database.
*************************************************************** */
-- Switch to recipes_and_ingredients database
USE recipes_and_ingredients;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
-- -------------------------------
-- RECIPES TABLE
-- Drop the table if it exists
DROP TABLE IF EXISTS recipes;
-- Create the table
CREATE TABLE IF NOT EXISTS recipes (
  `recipe_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(25) NOT NULL,
  `recipe_cuisine` varchar(25) NOT NULL,
  `recipe_servings` int NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Store recipe data';
--
-- RELATIONSHIPS FOR TABLE `recipes`:
--
COMMIT;


-- ---------------------------------
-- INGREDIENTS TABLE
-- Drop the table if it exists
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS ingredients;
CREATE TABLE IF NOT EXISTS ingredients (
  `ingredient_name` varchar(25) NOT NULL,
  `ingredient_unit` varchar(25) NOT NULL,
  `ingredient_qty` double NOT NULL,
  `ingredient_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Store ingredient data';

--
-- RELATIONSHIPS FOR TABLE `ingredients`:
--
COMMIT;


-- ---------------------------------
-- RECIPE_INGREDIENTS_XREF TABLE
-- Drop employee_training_xref table if it exists


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipes_and_ingredients`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredient_xref`
--
DROP TABLE IF EXISTS recipe_ingredient_xref;
CREATE TABLE IF NOT EXISTS recipe_ingredient_xref (
  `recipe_id` int UNSIGNED NOT NULL,
  `ingredient_id` int UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `status` varchar(25) NOT NULL,
  UNIQUE KEY `recipe_id` (`recipe_id`),
  KEY `ingredient_id_fk_constraint` (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Relates the recipes and ingredients on hand.';

--
-- RELATIONSHIPS FOR TABLE `recipe_ingredient_xref`:
--   `ingredient_id`
--       `ingredients` -> `ingredient_id`
--   `recipe_id`
--       `recipes` -> `recipe_id`
--

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe_ingredient_xref`
--
ALTER TABLE recipe_ingredient_xref
  ADD CONSTRAINT `ingredient_id_fk_constraint` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_id_fk_constraint` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

