-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT "Employees"."empl_no", "Employees"."last_name", "Employees"."first_name","Employees"."sex","Salaries"."salary"
FROM "Employees", "Salaries"
WHERE "Employees"."empl_no" = "Salaries"."empl_no";

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT "Employees"."first_name", "Employees"."last_name", "Employees"."hire_date"
FROM "Employees"
WHERE "Employees"."hire_date" BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

SELECT "Departments"."dept_no", "Departments"."dept_name", "Manager"."empl_no", "Employees"."last_name", "Employees"."first_name"
FROM "Departments" 
JOIN "Manager" ON "Departments"."dept_no" = "Manager"."dept_no"
JOIN "Employees" ON "Manager"."empl_no" = "Employees"."empl_no"; 

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

