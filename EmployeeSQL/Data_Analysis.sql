-- Employee details: employee number, last name, first name, sex, and salary.

SELECT "Employees"."empl_no", "Employees"."last_name", "Employees"."first_name","Employees"."sex","Salaries"."salary"
FROM "Employees", "Salaries"
WHERE "Employees"."empl_no" = "Salaries"."empl_no";

-- Employees who were hired in 1986. Details: first name, last name, and hire date.

SELECT "Employees"."first_name", "Employees"."last_name", "Employees"."hire_date"
FROM "Employees"
WHERE "Employees"."hire_date" BETWEEN '1986-01-01' AND '1986-12-31';

-- Manager of each department details: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM "Employees";