/* aggregate functions
COUNT, SUM, AVG, MIN, MAX
GROUP BY
also useful - ROUND
*/

.open example.db
.mode column
.header on

--SELECT MIN(salary) FROM employees;

--SELECT MAX(salary) FROM employees;

SELECT department_id, ROUND(AVG(salary),0) avg_salary
	FROM employees
	GROUP BY department_id
	ORDER BY salary DESC;