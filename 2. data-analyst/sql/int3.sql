/*
WITH and subqueries ()
*/

.open example.db
.mode column
.header on
/*
SELECT * FROM employees
	WHERE department_id NOT IN 
		(SELECT department_id FROM departments 
		WHERE location_id = 1700);
*/
WITH dep_ids AS (SELECT department_id FROM departments 
		WHERE location_id = 1700)

SELECT * FROM employees
	WHERE department_id NOT IN dep_ids;

