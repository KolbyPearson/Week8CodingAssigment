SELECT t.title, COUNT(title) AS "Employees with Title" FROM titles as t
INNER JOIN employees AS e ON e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01' GROUP BY t.title;


SELECT t.title, AVG(s.salary) as "Average Salary" FROM titles t
INNER JOIN salaries s ON s.emp_no = t.emp_no
GROUP BY t.title;


SELECT d.dept_name as "Department", sum(s.salary) as "Total Spent on Salary 1990-1992" FROM departments d
INNER JOIN current_dept_emp cde ON cde.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = cde.emp_no
WHERE s.to_date > '1990-01-01' AND s.from_date < '1992-12-31'
AND dept_name = 'Marketing';



