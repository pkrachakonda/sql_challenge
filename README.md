# SQL CHALLENGE
## DATA MODELLING

***ERD Link***: https://app.quickdatabasediagrams.com/#/d/pAp4sS

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/dde03b1d-a74c-477c-b878-9423e06e0a11)

The above image shows the ***Entity Relationship Diagram (ERD)*** for the objects used as part of this assignment. Mainly, ***Many-to-one*** realtionship exist for ***Employee and Department numbers*** with ***Employee's Job Titles***. A combination of ***Employee Number*** and ***Department Number*** have been defined as ***Primary Key (Composite Key)*** for both Department Empoyees and Department Manager objects, as combination makes them unique.

## DATA ENGINEERING

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/90b6bbac-a43b-4256-b616-2bee0ddcf813)

Lines 1 - 3 alter the SQL_Challenge database's datestyle format from ***Postgres ISO YMD*** (Year-Month-Date) to ***SQL MDY*** format as some of data type of the Assignment objects (Table) require that format. Code in line 6, makes all the objects (tables) to be dropped/deleted from the database, if they have been created earlier.

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/f48692b1-2318-4e74-b6be-6ef7763ff9bf)

Lines 11 - 15 create a table/object named "***Job_Title***" within *Public Schemas*. The data from csv are import into table using an inbuilt *Postgres importand Export function* and the imported process is verfified by calling "SELECT ALL Function"

Based on ERD schematic, Primary and Foreign Keys were also defined.

![image](https://github.com/pkrachakonda/sql_challenge/assets/20739237/e8825c83-d522-4c32-a57b-52e79201eef0)

Similar process was implemented for creating remaining tables *Employees* (Lines 21- 34), *Departments* (Lines 37 - 44), *Departmental Empolyees* (Lines 47 - 56). *Departmental Managers* (Lines 59 - 68) and  *Salaries* (Lines 71 - 78). *Date of Birth* and *Hiring Date* columns of *Employees* table/object require that Date format to be in *MDY* format. After creating the Tables/objects, data from csv files were imported into their respective objects/tables using the inbuilt *Import and Export* function of Postgress database.

 

