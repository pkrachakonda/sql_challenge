----1. List the employee number, last name, first name, sex, and salary of each employee 

SELECT Employees.Employee_Number, Employees.Last_Name, Employees.First_Name, Employees.Gender, Salaries.Salary
FROM Employees
INNER JOIN Salaries ON Employees.Employee_Number = Salaries.Employee_Number;

----2. List the first name, last name, and hire date for the employees who were hired in 1986

SELECT First_Name, Last_Name, Hiring_Date
FROM Employees
WHERE EXTRACT(YEAR FROM Hiring_Date) = 1986;

----3. List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT Dep_Mang.Department_Number, Dept.Department_Name, Emp.Employee_Number, Emp.Last_Name, Emp.First_Name 
FROM Employees Emp
JOIN Department_Manager Dep_Mang
ON (Emp.Employee_Number = Dep_Mang.Employee_Number)
	JOIN Departments Dept
	ON (Dep_Mang.Department_Number = Dept.Department_Number);

----4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

CREATE VIEW dept_employ AS
SELECT Dep_Emp.Department_Number, Emp.Employee_Number, Emp.Last_Name, Emp.First_Name, Dept.Department_Name
FROM Employees Emp
JOIN Department_Employees Dep_Emp
ON (Emp.Employee_Number = Dep_Emp.Employee_Number)
	JOIN Departments Dept
	ON (Dep_Emp.Department_Number = Dept.Department_Number);
SELECT * FROM dept_employ;

----5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT First_Name, Last_Name, Gender
FROM Employees
WHERE First_Name ='Hercules'
AND Last_Name LIKE 'B%';

----6. List each employee in the Sales department, including their employee number, last name, and first name

SELECT Employee_Number, Last_Name, First_Name
FROM dept_employ
WHERE department_number = 'd007';

----7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT Employee_Number, Last_Name, First_Name, Department_Name
FROM dept_employ
WHERE department_number = 'd005' OR department_number = 'd007';

----8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT Last_Name, Count(Last_Name) AS "count"
FROM dept_employ
GROUP BY Last_Name
ORDER BY "count" DESC;

DROP VIEW dept_employ;