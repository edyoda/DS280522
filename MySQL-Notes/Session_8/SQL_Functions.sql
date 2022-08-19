DROP DATABASE IF EXISTS test_func;
CREATE DATABASE test_func;
USE test_func;

CREATE TABLE Employee
(
 EmpID INT PRIMARY KEY,
 FirstName VARCHAR(100) NULL,
 LastName VARCHAR(100) NULL,
 Salary INT NULL,
 Address VARCHAR(100) NULL
);
-- Insert Data
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(1,"Mohan",'Chauahn',20000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(2,'Asif','Khan',15000,'Delhi');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(3,'Bhuvnesh','Shakya',56000,'Noida');
INSERT INTO Employee(EmpID,FirstName,LastName,Salary,Address) VALUES(4,'Deepak','Kumar',19000,'Noida');


CREATE TABLE Customers
(
 EmpID INT PRIMARY KEY,
 fn VARCHAR(100) NULL,
 ln VARCHAR(100) NULL,
 Salary INT NULL,
 Address VARCHAR(100) NULL
);
-- Insert Data
INSERT INTO Customers(EmpID,fn,ln,Salary,Address) VALUES(1,"Mohan",'Chauahn',20000,'Delhi');
INSERT INTO Customers(EmpID,fn,ln,Salary,Address) VALUES(2,'Asif','Khan',15000,'Delhi');
INSERT INTO Customers(EmpID,fn,ln,Salary,Address) VALUES(3,'Bhuvnesh','Shakya',56000,'Noida');
INSERT INTO Customers(EmpID,fn,ln,Salary,Address) VALUES(4,'Deepak','Kumar',19000,'Noida');





-- See created table
DELIMITER //

CREATE FUNCTION fnGetEmpFullName(
 a VARCHAR(20),
  b VARCHAR(20)
)
returns VARCHAR(30)  DETERMINISTIC
 return CONCAT_WS(" ", a, b)
//

DELIMITER ;

Select fnGetEmpFullName(FirstName,LastName) as Name, Salary from Employee;

Select fnGetEmpFullName(fn,ln) as Name, Salary from Customers;
