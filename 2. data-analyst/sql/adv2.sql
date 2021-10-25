/*
CREATE VIEW view_name AS

SELECT * FROM view_name

DROP VIEW
*/

CREATE VIEW salary_report AS
SELECT  e.department_id, 
		ROUND(AVG(e.salary),0) avg_salary,
		ROUND(MIN(e.salary),0) min_salary,
		ROUND(MAX(e.salary),0) max_salary,
		d.department_name
	FROM employees e
	INNER JOIN departments d ON e.department_id = d.department_id
	GROUP BY e.department_id
	ORDER BY e.salary DESC;