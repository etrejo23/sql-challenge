select * from salaries;
select * from employees;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.salary;

ALTER TABLE employees
ALTER COLUMN hire_date TYPE DATE;

select employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date::date BETWEEN '01/01/1986' AND '12/31/1986';

SELECT * FROM dept_manager
SELECT * FROM departments
SELECT * FROM employees

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name 
FROM departments
JOIN dept_manager ON
departments.dept_no=dept_manager.dept_no
JOIN employees ON
employees.emp_no=dept_manager.emp_no;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON
departments.dept_no=dept_emp.dept_no
JOIN employees ON
employees.emp_no=dept_emp.emp_no;

SELECT employees.last_name, employees.first_name, employees.sex FROM employees
WHERE first_name ='Hercules' AND last_name LIKE 'B%';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON
departments.dept_no=dept_emp.dept_no
JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE departments.dept_name = 'Sales';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp ON
departments.dept_no=dept_emp.dept_no
JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE departments.dept_name IN('Sales','Development');

SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;

