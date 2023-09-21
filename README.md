# SQL CHALLENGE
## DATA MODELLING

***ERD Link***: https://app.quickdatabasediagrams.com/#/d/pAp4sS

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/dde03b1d-a74c-477c-b878-9423e06e0a11)

The above image shows the ***Entity Relationship Diagram (ERD)*** for the objects used as part of this assignment. Mainly, ***Many-to-One*** relationship exist for ***Employee and Department numbers*** with ***Employee's Job Titles***. A combination of ***Employee Number*** and ***Department Number*** have been defined as ***Primary Key (Composite Key)*** for both Department Employees and Department Manager objects, as combination makes them unique.

## DATA ENGINEERING

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/90b6bbac-a43b-4256-b616-2bee0ddcf813)

Lines 1 - 3 alter the SQL_Challenge database's datestyle format from ***Postgres ISO YMD*** (Year-Month-Date) to ***SQL MDY*** format as some of data type of the Assignment objects (Table) require that format. Code in line 6, makes all the objects (tables) to be dropped/deleted from the database, if they have been created earlier.

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/f48692b1-2318-4e74-b6be-6ef7763ff9bf)

Lines 11 - 15 create a table/object named "***Job_Title***" within *Public Schemas*. The data from csv are import into table using an inbuilt *Postgres Import and Export function* and the imported process is verified by calling "SELECT ALL Function”.

Based on ERD schematic, Primary and Foreign Keys were also defined.

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/e8825c83-d522-4c32-a57b-52e79201eef0)

Similar process was implemented for creating remaining tables *Employees* (Lines 21- 34), *Departments* (Lines 37 - 44), *Departmental Employees* (Lines 47 - 56), *Departmental Managers* (Lines 59 - 68) and *Salaries* (Lines 71 - 78). *Date of Birth* and *Hiring Date* columns of *Employees* table/object require that Date format to be in *MDY* format. After creating the Tables/objects, data from csv files were imported into their respective objects/tables using the inbuilt *Import and Export* function of PostgreSQL database.

## DATA ANALYSIS

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/908c0351-81c2-4645-9afa-4be3eeea8226)
![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/6f139863-5c8e-4e2f-8642-19eebfd5ca91)

Line 3 selects columns Employee Number, Employee's Last and First Name columns from *Employee's* Table (line 4) as well as their corresponding salaries from *Salaries* Table by performing an inner join with corresponding employee number (id0 (Line 5)

Similarly, code in line 9-11 display employee's first and last name as well as date and month when they have been hired in year 1986.

By joining/matching the Employee's Id/number with department manager Id/number as well as with Department code/number, lines 15 - 20 display Manager of each department along with their department number, department name, employee number, last name, and first name.

A *View* was created (line 24) by matching/joining Employee's Id/Number, First and Last Name from *Employees* table with Department Number/Id from *Departmental Employee* table and with *Departments* table to obtain the Department Name (Lines 25 - 31). This *View* is used to display the all employees in *Sales Department* (Lines 42 - 44) as well as in *Sales and Development* departments (Lines 48 - 50). The *View* was also used to count the number of employees who share same last name (Line 54 - 57).

The code block in lines 35 - 38, list the employees in the *Employees* table, whose last name starts with letter ***B*** and first name is *Hercules*.
