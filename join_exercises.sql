USE employees;

/*Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department*/
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY departments.dept_name ;

/*Find the name of all departments currently managed by women*/
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manager Name'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
ORDER BY departments.dept_name;

/*Find the current titles of employees currently working in the Customer Service department*/
SELECT titles.title AS 'Title', COUNT(*) AS 'Count'
FROM titles JOIN employees ON titles.emp_no = employees.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE titles.to_date = '9999-01-01' AND departments.dept_name = 'Customer Service' AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;

/*Find the current salary of all current managers*/
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY departments.dept_name;

/*Bonus Find the names of all current employees, their department name, and their current manager's name*/
SELECT t1.Employee_Name AS 'Employee Name', t2.Department_Name AS 'Despartment Name', t2.Department_Manager AS 'Manager Name' FROM
(SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee_Name' FROM employees e
    JOIN dept_emp ON e.emp_no = dept_emp.emp_no
    JOIN departments d ON dept_emp.dept_no = d.dept_no
WHERE dept_emp.to_date = '9999-01-01') t1
LEFT JOIN
(SELECT departments.dept_name, departments.dept_name AS 'Department_Name', employees.emp_no ,CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department_Manager'
FROM departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
                 JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY departments.dept_name) t2
ON t1.dept_name = t2.dept_name;