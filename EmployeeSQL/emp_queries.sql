-- List the employee number, last name, first name, sex, and salary of each employee 
SELECT 
	e.emp_no, 
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no
ORDER BY emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT * FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT 
	dm.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS dm
LEFT JOIN departments AS d
ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no
ORDER BY emp_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT
	de.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
ORDER BY emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

-- List each employee in the Sales department, including their employee number, last name, and first name 
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY emp_no ASC;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY emp_no ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT last_name, COUNT(last_name) AS num_of_employees
FROM employees
GROUP BY last_name
ORDER BY num_of_employees DESC;