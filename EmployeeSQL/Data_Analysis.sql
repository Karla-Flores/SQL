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

SELECT "Employees"."empl_no", "Employees"."last_name", "Employees"."first_name", "Department_Employee"."dept_no", "Departments"."dept_name"
FROM "Employees"
JOIN "Department_Employee" ON "Employees"."empl_no" = "Department_Employee"."empl_no"
JOIN "Departments" ON "Departments"."dept_no" = "Department_Employee"."dept_no"
ORDER BY "Employees"."empl_no";

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT "Employees"."first_name", "Employees"."last_name", "Employees"."sex"
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT "Employees"."empl_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Department_Employee"
JOIN "Employees" ON "Department_Employee"."empl_no" = "Employees"."empl_no"
JOIN "Departments" ON "Department_Employee"."dept_no" = "Department_Employee"."dept_no"
WHERE "Departments"."dept_name" = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT "Department_Employee"."empl_no", "Employees"."last_name", "Employees"."first_name", "Departments"."dept_name"
FROM "Department_Employee"
JOIN "Employees" ON "Department_Employee"."empl_no" = "Employees"."empl_no"
JOIN "Departments" ON "Department_Employee"."dept_no" = "Departments"."dept_no"
WHERE "Departments"."dept_name" = 'Sales' or "Departments"."dept_name" = 'Development'
ORDER BY "Employees"."empl_no";

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT "Employees"."last_name", COUNT("Employees"."last_name") AS "Frequency"
FROM "Employees"
GROUP BY "Employees"."last_name"
ORDER BY COUNT("Employees"."last_name") DESC;
