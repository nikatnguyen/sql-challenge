--Use the provided information to create a table schema for each of the six CSV files. 
--Import each CSV file into its corresponding SQL table.



CREATE TABLE employees(
	emp_no SERIAL NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL
);


CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);


CREATE TABLE salaries(
	emp_no SERIAL NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp(
	emp_no SERIAL NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_managers(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no SERIAL NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--DATA ANALYSIS--

--List the employee number, last name, first name, sex, and salary of each employee.
2

--List the first name, last name, and hire date for the employees who were hired in 1986.

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--List each employee in the Sales department, including their employee number, last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).