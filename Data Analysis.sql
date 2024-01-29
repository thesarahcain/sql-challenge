-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees_table.emp_no, employees_table.last_name, employees_table.first_name, employees_table.sex, salaries_table.salary
FROM employees_table
INNER JOIN salaries_table ON salaries_table.emp_no = employees_table.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT employees_table.first_name, employees_table.last_name, employees_table.hire_date
FROM employees_table
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01'

--ERROR!!!! List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT depart_manager_table.dept_no, departments_table.dept_name, employees_table.emp_no, employees_table.last_name, employees_table.first_name
FROM dept_manager_table 
INNER JOIN departments_table ON dept_manager_table.dept_no = departments_table.dept_no 
INNER JOIN employees_table ON dept_manager_table.emp_no = employees_table.emp_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees_table.first_name, employees_table.last_name, employees_table.sex
FROM employees_table
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT departments_table.dept_name, employees_table.emp_no, employees_table.last_name, employees_table.first_name
FROM employees_table 
INNER JOIN dept_emp_table ON employees_table.emp_no = dept_emp_table.emp_no 
INNER JOIN departments_table ON dept_emp_table.dept_no = departments_table.dept_no
WHERE dept_name ='Sales'

