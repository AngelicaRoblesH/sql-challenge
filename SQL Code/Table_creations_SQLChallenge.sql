DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(45) NOT NULL
);

CREATE TABLE title (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);
-- here
CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(45) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE dept_manager (
  dept_no VARCHAR(255) NOT NULL,
  emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



SELECT * FROM departments LIMIT 100;
SELECT * FROM dept_emp LIMIT 100;
SELECT * FROM dept_manager LIMIT 100;
SELECT * FROM employees LIMIT 100;
SELECT * FROM salaries LIMIT 100;
SELECT * FROM title LIMIT 100;
