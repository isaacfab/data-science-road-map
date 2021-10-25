/* 
AND, OR, NOT, EXISTS (subquery T/F if any rows exist),
IS NULL, IS NOT NULL 
*/

.open example.db
.mode column
.header on

SELECT * FROM employees
	WHERE phone_number IS NOT NULL
	AND first_name LIKE '%h%';

SELECT * FROM employees
	WHERE phone_number IS NOT NULL
	OR first_name LIKE '%h%';

SELECT * FROM employees
	WHERE phone_number IS NULL;

SELECT * FROM employees
	WHERE
    EXISTS( SELECT 1 FROM dependents
        WHERE 
        dependents.employee_id = employees.employee_id
        ); --subquery
