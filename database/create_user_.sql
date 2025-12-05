/*******************************************
Drop and create the employee_training_user
********************************************/
-- Drop user if exists
DROP USER IF EXISTS 'employee_training_user'@'%';

-- Create a user with a password (replace the placeholder with a secure password)
-- If your server requires a specific auth plugin, use IDENTIFIED WITH 'plugin' BY 'password'
CREATE USER IF NOT EXISTS 'employee_training_user'@'%' IDENTIFIED BY 'ChangeMeStrongPassword!';

-- If you really need global privileges (rare), you can grant on *.* — but this is a security risk.
-- GRANT ALL PRIVILEGES ON *.* TO 'employee_training_user'@'%';

-- Grant privileges on a specific database (recommended)
GRANT ALL PRIVILEGES ON `employee_training`.*
TO 'employee_training_user'@'%' WITH GRANT OPTION;

-- Set resource limits on the user (optional)
ALTER USER 'employee_training_user'@'%'
    REQUIRE NONE
    WITH MAX_QUERIES_PER_HOUR 0
             MAX_CONNECTIONS_PER_HOUR 0
             MAX_UPDATES_PER_HOUR 0
             MAX_USER_CONNECTIONS 0;

-- NOTE: MySQL does not accept wildcards in the database identifier in GRANT statements.
-- If you need to grant privileges on multiple databases that share a prefix (e.g. employee_training_user_1, employee_training_user_2),
-- generate GRANT statements programmatically from information_schema and execute them. Example (run as an admin):
--
-- SELECT CONCAT('GRANT ALL PRIVILEGES ON `', schema_name, '`.* TO ''employee_training_user''@''%'';')
-- FROM information_schema.schemata
-- WHERE schema_name LIKE 'employee_training_user\_%';