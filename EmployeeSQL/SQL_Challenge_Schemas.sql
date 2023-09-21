ALTER DATABASE "SQL_Challenge" 
    SET datestyle = 'SQL, MDY'; --- Altering database datestyle format to "MDY" from "YMD"
SET datestyle = 'SQL, MDY'; -- Setting datestyle to SQL format of MM/DD/YYYY

--- Deleting existing tables, if they exists in Database
DROP TABLE IF EXISTS Employees, Departments, Department_Manager, Department_Employees, Salaries, Job_Title;

---                                   Creating tables
------------------------------------------------------------------------------------------------------------------------
---Table: JOB Title and assigning Primary/Foreign Keys
CREATE TABLE Job_Title(
	Title_id VARCHAR(10) NOT NULL,
	Title VARCHAR (20)  NOT NULL,
	PRIMARY KEY (Title_id) 
);
--Importing data to Job_Title Table from "titles.csv"

SELECT * FROM Job_Title;  -- To verify whether table is imported properly
-------------------------------------------------------------------------------------------------------------------------
---Table: EMPLOYEES and assigning Primary Key
CREATE TABLE Employees(
	Employee_Number INT NOT NULL,
	Employee_TitleID VARCHAR(10) NOT NULL,
	Date_of_Birth DATE NOT NULL,
	First_Name VARCHAR(30) NOT NULL,
	Last_Name VARCHAR(30) NOT NULL,
	Gender VARCHAR(6),
	Hiring_Date DATE NOT NULL,
	PRIMARY KEY(Employee_Number),
	FOREIGN KEY (Employee_TitleID) REFERENCES Job_Title(Title_id)
);
--Importing data to Employees Table from "employees.csv"

SELECT * FROM Employees;  --- To verify whether table is imported properly 
------------------------------------------------------------------------------------------------------------------------
---Table: DEPARTMENTS and assigning Primary Key
CREATE TABLE Departments(
	Department_Number VARCHAR(10) NOT NULL,
	Department_Name VARCHAR(30) NOT NULL,
	PRIMARY KEY (Department_Number)
);
--Importing data to Departments Table from "departments.csv"

SELECT * FROM Departments;  --- To verify whether table is imported properly 
------------------------------------------------------------------------------------------------------------------------
---Table: DEPARTMENTAl EMPLOYEES and assigning Primary/Foreign Keys
CREATE TABLE Department_Employees(
	Employee_Number INT NOT NULL,
	Department_Number VARCHAR(10) NOT NULL,
	PRIMARY KEY (Department_Number,Employee_Number),
	FOREIGN KEY (Employee_Number) REFERENCES Employees(Employee_Number),
	FOREIGN KEY (Department_Number) REFERENCES Departments(Department_Number)
);
--Importing data to Department_Employees Table from "dept_emp.csv"

SELECT * FROM Department_Employees;  --- To verify whether table is imported properly 
------------------------------------------------------------------------------------------------------------------------
---Table: DEPARTMENTAl MANAGER and assigning Primary/Foreign Keys
CREATE TABLE Department_Manager(
	Department_Number VARCHAR(10) NOT NULL,
	Employee_Number INT NOT NULL,
	PRIMARY KEY (Department_Number,Employee_Number),
	FOREIGN KEY (Employee_Number) REFERENCES Employees(Employee_Number),
	FOREIGN KEY (Department_Number) REFERENCES Departments(Department_Number)
);
--Importing data to Department_Manager Table from "dept_manager.csv"

SELECT * FROM Department_Manager;  --- To verify whether table is imported properly 
------------------------------------------------------------------------------------------------------------------------
---Table: SALARIES and assigning Primary/Foreign Keys
CREATE TABLE Salaries(
	Employee_Number INT NOT NULL,
	Salary INT NOT NULL,
	FOREIGN KEY (Employee_Number) REFERENCES Employees(Employee_Number) 
);
--Importing data to Salaries Table from "salaries.csv"

SELECT * FROM Salaries;  -- To verify whether table is imported properly 
------------------------------------------------------------------------------------------------------------------------
