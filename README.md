<h1>SQL--Challenge</h1>
<hr -->

<p align:'Justify'>This task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.</p>
<br>
<h3>Data Engineering</h3>
<hr -->
<p align:'Justify'>This is an ERD of six tables: Salaries, Titles, Manager,Employees, Departments, and Department Employee. A SQL table schema was created for each of the six CSV files using the ERD. Primary and Foreign Keys were added. When necessary, composite primary keys were created for a table.</p>

<p align:'Justify'>Each CSV file was imported into the corresponding SQL table in the same order that the tables were created to avoid errors.</p>

<img width="982" alt="Screen Shot 2021-06-20 at 1 13 33 PM" src="https://user-images.githubusercontent.com/77529968/122684138-520ac000-d1c9-11eb-860f-33475471f527.png">
<br>
<h3>Data Analysis</h3>
<hr -->
<p>Once the database was complete the data was analyzed. Queries were created to:</p>

<ol>
  <li>List the following details of each employee: employee number, last name, first name, sex, and salary.</li>
  <li>List first name, last name, and hire date for employees who were hired in 1986.</li>
  <li>List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.</li>
  <li>List the department of each employee with the following information: employee number, last name, first name, and department name.</li>
  <li>List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."</li>
  <li>List all employees in the Sales department, including their employee number, last name, first name, and department name.</li>
  <li>List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.</li>
  <li>In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.</li>
</ol>
<h3>Data Visualization</h3>
<hr -->
<p>
The SQL database was imported into Pandas. The following visualizations were then generated:</p>
<ul>
  <li>A histogram to visualize the most common salary ranges for employees.</li>
  <li>A bar chart of average salary by title.</li>
</ul>

