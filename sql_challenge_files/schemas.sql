--Titles table
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR (30),
	PRIMARY KEY (title_id)
);

Select*
From titles;

--Employees table
CREATE TABLE employees(
	emp_no int NOT NULL,
	emp_title VARCHAR(10),
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(5),
	hire_date VARCHAR(10),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

Select*
From employees;

--Departments table
CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

Select*
From departments;

--Department Employees table
CREATE TABLE dept_emp(
	emp_no int,
	dept_no VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Select*
From dept_emp

--Department Manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no int,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select*
From dept_manager;

--Salaries table
CREATE TABLE salaries(
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select*
From salaries;