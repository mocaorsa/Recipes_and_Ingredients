/* ******************************************************
Insert test data into the employee_training database.
********************************************************/
-- Switch to the employee_training database.
USE employee_training
-- Insert data into the employees table.
INSERT INTO employees (first_name, middle_name, last_name, birthday, gender)
VALUES ('Rick', 'Warren', 'Miller', '1976-08-20 00:00:00', 'M');
INSERT INTO employees (first_name, middle_name, last_name, birthday, gender)
VALUES ('Jose', 'Miguel', 'Pi', '1985-12-01 00:00:00', 'M');
INSERT INTO employees (first_name, middle_name, last_name, birthday, gender)
VALUES ('Coralie', 'Sarah', 'Miller', '1989-04-28 00:00:00', 'F');
INSERT INTO employees (first_name, middle_name, last_name, birthday, gender)
VALUES ('Melissa', 'Martin', 'Miller', '1992-06-11 00:00:00', 'M');
INSERT INTO employees (first_name, middle_name, last_name, birthday, gender)
VALUES ('Kyle', 'Victor', 'Miller', '1990-08-15 00:00:00', 'M');

/*Insert data into the courses table. */

INSERT INTO courses (title, description)
    values ('Intro to Bash Shell Scripting',
            'How to script the Bash shell.');
INSERT INTO courses (title, description)
    values ('Intro to C Programming',
            'Introduces student to C programming language fundamentals.');
INSERT INTO courses (title, description)
    values ('Managing Difficult Employees',
        'How to lead through kindness.');
INSERT INTO courses (title, description)
    values ('Database Programming with Python',
            'How to develop data-driven apps with Python.');

/* Insert data into a combined employee_training table for easier querying. 
INSERT INTO employee_training (employee_id, title, description, start_date,
end_date, status)
VALUES(1, 'Intro to Bash Shell Scripting',
'How to script the Bash shell.',
'2025-09-15 00:00:00', '2025-09-20 00:00:00', 'Pass');
INSERT INTO employee_training (employee_id, title, description, start_date,
end_date, status)
VALUES(1, 'Intro to C Programming',
'Introduces student to C programming language fundamentals.',
'2025-02-03 00:00:00', '2025-02-07 00:00:00', 'Pass');
INSERT INTO employee_training (employee_id, title, description, start_date,
end_date, status)
VALUES(2, 'Managing Difficult Employees',
'How to lead through kindness.',
'2025-03-10 00:00:00', '2025-03-10 00:00:00', 'Pass');
INSERT INTO employee_training (employee_id, title, description, start_date,
end_date, status)
VALUES(2, 'Intro to Bash Shell Scripting',
'How to script the Bash shell.',
'2025-09-15 00:00:00', '2025-09-20 00:00:00', 'Pass');
INSERT INTO employee_training (employee_id, title, description, start_date,
end_date, status)
VALUES(2, 'Database Programming with Python',
'How to develop data-driven apps with Python.',
'2025-06-16 00:00:00', '2025-06-20 00:00:00', 'Pass');
*/


-- Insert data into the employee_training_xref table.
INSERT INTO employee_training_xref (employee_id, course_id, start_date, end_date, status)
    VALUES(1, 1, '2025-09-15 00:00:00', '2025-09-20 00:00:00', 'Pass');
INSERT INTO employee_training_xref (employee_id, course_id, start_date, end_date, status)
    VALUES(2, 1, '2025-09-15 00:00:00', '2025-09-20 00:00:00', 'Pass');