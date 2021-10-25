-- SELECT FROM LIMIT WHERE

.open example.db
.mode column
.header on

SELECT * FROM countries;

/*	valid operators for WHERE
= 
<> (not equal)
>, <, >=, <= 
BETWEEN (seperate with AND)
LIKE
IN ()
*/

SELECT * FROM countries
	LIMIT 3;

SELECT * FROM countries
	WHERE country_name LIKE '_r%';

SELECT * FROM countries
	WHERE region_id BETWEEN 1 AND 2;