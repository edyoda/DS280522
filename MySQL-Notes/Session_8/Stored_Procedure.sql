DELIMITER ;
DROP PROCEDURE IF EXISTS select_all_columns;
USE  customers_and_orders;

DELIMITER $$

CREATE PROCEDURE select_all_columns(IN table_name varchar(20))
BEGIN
    SET @sql = CONCAT('SELECT * FROM ',table_name,';'); 
    PREPARE s1 from @sql;
    EXECUTE s1 ;
END $$


DELIMITER ;

CALL select_all_columns("orders");
CALL select_all_columns("customers");



DROP DATABASE IF EXISTS stored_proc_tutorial;
-- create schema
CREATE DATABASE stored_proc_tutorial;

USE stored_proc_tutorial;
-- table creation
CREATE TABLE studentMarks (stud_id SMALLINT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY, total_marks INT, grade VARCHAR(5));
 
 
-- insert sample data
INSERT INTO studentMarks(total_marks, grade) VALUES(450, 'A'), (480, 'A+'), (490, 'A++'), (440, 'B+'),(400, 'C+'),(380,'C')
,(250, 'D'),(200,'E'),(100,'F'),(150,'F'),(220, 'E');



-- PROCEDURE

DELIMITER $$
CREATE PROCEDURE GetStudentData()
BEGIN
    SELECT * FROM studentMarks;
END$$
DELIMITER ;


CALL GetStudentData();

-- Creating a Procedure with Input Parameters

DELIMITER //
CREATE PROCEDURE stored_proc_tutorial.spGetDetailsByStudentName(IN studentId INT)
BEGIN
    SELECT * FROM studentMarks where stud_id = studentId;
END //
DELIMITER ;

CALL stored_proc_tutorial.spGetDetailsByStudentName(1);

-- Creating Procedure with Output Parameters

DELIMITER //
CREATE PROCEDURE stored_proc_tutorial.spGetAverageMarks(OUT average DECIMAL(5,2))
BEGIN
    SELECT AVG(total_marks) INTO average FROM studentMarks;
END //
DELIMITER ;

CALL stored_proc_tutorial.spGetAverageMarks(@average_marks);


SELECT @average_marks;


-- Procedures With INOUT PARAMETERS


DELIMITER //
CREATE PROCEDURE stored_proc_tutorial.spUpdateCounter(INOUT counter INT, IN increment INT)
BEGIN
    SET counter = counter + increment;
END //
DELIMITER ;

SET @counter=10;
CALL stored_proc_tutorial.spUpdateCounter(@counter,3);
SELECT @counter;



-- MySQL STORED PROCEDURES Local Variables


-- Syntax 

-- DECLARE {varName} DATATYPE [DEFAULT value] ;

-- Suppose we want to find the count of students who is having marks below the average marks of all the students.

DELIMITER //
CREATE PROCEDURE stored_proc_tutorial.spCountOfBelowAverage(OUT countBelowAverage INT)
BEGIN
    DECLARE avgMarks DECIMAL(5,2) DEFAULT 0;
    SELECT AVG(total_marks) INTO avgMarks FROM studentMarks;
    SELECT COUNT(*) INTO countBelowAverage FROM studentMarks WHERE total_marks < avgMarks;
END //
DELIMITER ;



/*
It’s also important to note that the value can also be assigned to a local variable
using the SET if it’s a static pre-computed value.
*/
SET avgMarks = 150.5;

SELECT COUNT(*) INTO countBelowAverage FROM studentMarks WHERE total_marks < avgMarks;

CALL stored_proc_tutorial.spCountOfBelowAverage(@countBelowAverage);
SELECT @countBelowAverage;


-- Listing All STORED PROCEDURES

SHOW PROCEDURE STATUS WHERE name LIKE 'sp%'






















