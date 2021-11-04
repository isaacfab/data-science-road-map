/*
INSERT INTO (VALUES), UPDATE (SET), DELETE
*/

.open example.db
.mode column
.header on

/*INSERT INTO dependents (dependent_id, 
	first_name, 
	last_name, 
	relationship, 
	employee_id)

VALUES (31, 'Isaac','Faber','Child',176);
*/

/*
UPDATE dependents

SET last_name = 'Smith'

WHERE first_name = 'Isaac';
*/

DELETE FROM dependents
WHERE first_name = 'Isaac';

