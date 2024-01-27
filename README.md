# sql-challenge

### Data Modeling
## 
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..
The following is the code I used to create the ERD. Departments
--
dept_no varchar(4) pk FK >- Department_Employees.dept_no
dept_name varchar(25)

Employees
-- 
emp_no int pk FK >- Salaries.emp_no
emp_title_id varchar(5) FK >- Titles.title_id
birth_date date 
first_name varchar(25)
last_name varchar(25)
sex varchar(1)
hire_date date

Department_Manager 
--
dept_no varchar(4) FK >- Departments.dept_no
emp_no int FK >- Employees.emp_no

Department_Employees 
-- 
emp_no int FK >- Employees.emp_no
dept_no varchar(4)

Salaries 
-- 
emp_no int
salary int

Titles 
-- 
title_id varchar(5) pk
title varchar(25)
![image](https://github.com/thesarahcain/sql-challenge/assets/148586543/143e098c-2b3d-4882-9cd6-bd3f196d0dab)
