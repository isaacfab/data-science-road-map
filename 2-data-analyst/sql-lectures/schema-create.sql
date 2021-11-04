--- source https://www.sqltutorial.org/sql-sample-database/

CREATE TABLE regions (
	region_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	region_name text NOT NULL
);

CREATE TABLE countries (
	country_id text NOT NULL,
	country_name text NOT NULL,
	region_id INTEGER NOT NULL,
	PRIMARY KEY (country_id ASC),
	FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE locations (
	location_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	street_address text,
	postal_code text,
	city text NOT NULL,
	state_province text,
	country_id INTEGER NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE departments (
	department_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	department_name text NOT NULL,
	location_id INTEGER NOT NULL,
	FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE jobs (
	job_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	job_title text NOT NULL,
	min_salary double NOT NULL,
	max_salary double NOT NULL
);

CREATE TABLE employees (
	employee_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	first_name text,
	last_name text NOT NULL,
	email text NOT NULL,
	phone_number text,
	hire_date text NOT NULL,
	job_id INTEGER NOT NULL,
	salary double NOT NULL,
	manager_id INTEGER,
	department_id INTEGER NOT NULL,
	FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (department_id) REFERENCES departments (department_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE dependents (
	dependent_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	first_name text NOT NULL,
	last_name text NOT NULL,
	relationship text NOT NULL,
	employee_id INTEGER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);