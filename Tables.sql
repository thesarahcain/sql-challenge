CREATE TABLE departments_table (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(25) NOT NULL, 
	PRIMARY KEY(dept_no)) 

CREATE TABLE dept_emp_table ( 
	emp_no INT,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees_table(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments_table(dept_no),
    PRIMARY KEY (emp_no, dept_no))
	
CREATE TABLE dept_manager_table (
	dept_no VARCHAR(4),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments_table(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees_table(emp_no),
    PRIMARY KEY (dept_no, emp_no))

CREATE TABLE employees_table (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    sex VARCHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles_table(title_id))

CREATE TABLE salaries_table(
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees_table(emp_no),
    PRIMARY KEY (emp_no))

CREATE TABLE titles_table(
	title_id VARCHAR NOT NULL, 
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id))