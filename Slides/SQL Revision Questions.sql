Employee_Details

Schema :
EmpID int
FullName string
ManagerID int
DateOfJoining DATE
City string


Employee_Salary

Schema :

EmpID int
Project int
Salary int
Variable int

Q) SQL query to fetch EmpId & Full Name of all emp
   working under Manger with ID 343

   select empId,fullname 
   from employee_Details 
   where ManagerId = 343 ;

Q) SQL query to fetch all the different/unique 
   projects available

   select distinct (Project) from employee_Salary;

Q) SQL query to fetch the number of emp working 
   in project 'p1'
    select count(empID) 
    from employee_salary where project='p1'

    or 
    select count(*) 
    from employee_salary where project='p1'

Q)  SQL query to find the emp ids of emp whose Salary
	is in the range 8000 and 12000

	select empId 
	from employee_salary
	where Salary between 8000 and 12000;

Q) SQL query to find details of emp who either live in Delhi
   or worker under manager with id 232

   select * from employee_Details 
   where City = 'Delhi' or Managerid = 232;

Q) SQL query to find details of emp who work on project
   other than project 'p3'

   select * from Employee_Salary
   where NOT Project = 'p3';

   or

   select * from Employee_Salary
   where  Project <> 'p3';

Q) SQL query to display the total Salary of each employee
   adding the Salary value

   output :

   empID , total_salary
   233     Salary 8000
   111     Salary 3000

   select empId , "Salary" + Salary as total_salary
   from employee_salary

Q) SQL Query to fetch the emp whose name begins with any 
	3 char followed by 'hn' and ends 
	with any sequence of char

	select * from employee_Details
	where fullname LIKE '___hn%' ;

Q) SQL query to fetch emp_id in either of  the 2 tables
 
 	select empId from employee_Details
 			UNION
 	select empId from Employee_Salary

Q) SQL query to fetch emp_id which are common in both tables
   (subquery)

   select * from Employee_Salary
   where empId IN (select empId from Employee_Details)

   -- select * from Employee_Salary
   -- where empId IN (233 , 544 , 122)

Q) Table :
FirstName | LastName
 Arun     | Kumar

output:

FullName
Arun Kumar

select concat(FirstName ," " , LastName ) as FullName
from table;

-- ARUN KUMAR

Q) SQL query to fetch emp_id who are not 
   working on any project

   select empId from employee_Salary
   where Project IS NULL;

   project = NULL (WRONG!!)

Q) SQL query TO fetch details of employee who
   joined the company in the year 2021

   select * from employee_Details
   where DateOfJoining between '2021-01-01' and '2021-12-31'
   	OR 
   select * from employee_Details
   where YEAR(DateOfJoining) = '2021'; 

Q) SQL query to fetch employee_names and Salary, even if
   salary is not present for that employee 

   select Employee_Details.FullName,Employee_Salary.Salary
   FROM Employee_Details
   LEFT JOIN Employee_Salary
   ON Employee_Details.EmpID = Employee_Salary.EmpID


 --------------------------------------------------


CREATE TABLE DEPARTMENT(

	DEPARTMENT_ID INT PRIMARY KEY, 
	FullName VARCHAR(50) NOT NULL, 
	EMP_ID INT UNIQUE ,
	ADDRESS VARCHAR(255)
)

CREATE TABLE EMPLOYEE(

ID INT PRIMARY KEY, 
DEPARTMENT_ID INT FOREIGN KEY 
REFERENCES DEPARTMENT(DEPARTMENT_ID)
)













   
   









