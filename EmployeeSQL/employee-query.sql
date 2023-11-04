--List the employee number, last name, first name, sex, and salary of each employee.
SELECT
	ee.emp_no,
	ee.last_name,
	ee.first_name,
	ee.sex,
	ss.salary
FROM employees ee
INNER JOIN salaries ss ON
	ee.emp_no = ss.emp_no
ORDER BY ee.emp_no ASC;
	

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01';
	

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
	dm.dept_no,
	dm.emp_no,
	de.dept_name,
	em.last_name,
	em.first_name
FROM dept_manager dm
INNER JOIN departments de ON
	dm.dept_no =de.dept_no
INNER JOIN employees em ON
	dm.emp_no = em.emp_no;
	
	
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT 
	de.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
de.dept_no = d.dept_no;
		
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
	em.emp_no,
	em.last_name,
	em.first_name,
	de.dept_no,
	ds.dept_name
FROM employees em 
INNER JOIN dept_emp de ON
	em.emp_no = de.emp_no
INNER JOIN departments ds ON
      de.dept_no = ds.dept_no
WHERE ds.dept_name='Sales';	

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	em.emp_no,
	em.last_name,
	em.first_name,
	de.dept_no,
	ds.dept_name
FROM employees em 
INNER JOIN dept_emp de ON
	em.emp_no = de.emp_no
INNER JOIN departments ds ON
      de.dept_no = ds.dept_no
WHERE ds.dept_name='Sales' OR ds.dept_name='Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
	last_name,
	COUNT(last_name)as "frequency count"
FROM employees
GROUP BY last_name
ORDER BY "frequency count" DESC;

