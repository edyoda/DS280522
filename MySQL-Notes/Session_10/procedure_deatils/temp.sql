DELIMITER ;

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

END $$

DELIMITER ;

CALL GetStudentData();

-- Creating a Procedure with Input Parameters

DELIMITER //

CREATE PROCEDURE spGetDetailsByStudentName(IN studentId INT)
BEGIN

SELECT * FROM studentMarks where stud_id = studentId;

END //

DELIMITER ;

CALL spGetDetailsByStudentName(1);

SELECT * FROM studentMarks where stud_id = 1;


-- Creating Procedure with Output Parameters

DELIMITER //



CREATE PROCEDURE spGetAverageMarks(OUT average DECIMAL(5,2))
BEGIN

SELECT AVG(total_marks) INTO average FROM studentMarks;

END //

DELIMITER ;

CALL stored_proc_tutorial.spGetAverageMarks(@average_marks);

SELECT @average_marks;

-- inputs parameter as IN

-- output parameter as OUT

-- input/output parameter as INOUT

-- counter = initial value --> initial_value + 1 --> initial_value = updated_value

-- counter = 0 ; proc -- > counter = counter + 1

DELIMITER //

CREATE PROCEDURE spUpdateCounter(INOUT counter INT, IN increment INT )

BEGIN
    SET counter = counter + increment;
END //

DELIMITER ;

SET @counter=10;
SELECT @counter;

CALL spUpdateCounter(@counter,3);

SELECT @counter;


DELIMITER //

CREATE PROCEDURE spArea_of_Circle(OUT area DECIMAL(3,2), IN radius INT, IN pi INT )

BEGIN
    SET area = pi * radius * radius;
END //


CALL spArea_of_Circle(@area,1,3);

SELECT @area;


-- MySQL STORED PROCEDURES Local Variables


-- Syntax 

-- DECLARE {varName} DATATYPE [DEFAULT value] ;

-- Suppose we want to find the count of students who is having marks below the average marks of all the students.



DELIMITER //

CREATE PROCEDURE spArea_of_Circle_with_local_vr(OUT area DECIMAL(3,2), IN radius INT )

BEGIN

	DECLARE pi DECIMAL(5,2) DEFAULT 3.14;
    SET area = pi * radius * radius;
    
END //

DELIMITER ;
CALL spArea_of_Circle_with_local_vr(@area,1);

SELECT @area;

DELIMITER //
CREATE PROCEDURE spCountOfBelowAverage(OUT countBelowAverage INT)
BEGIN
    DECLARE avgMarks DECIMAL(5,2) DEFAULT 0;
    SELECT AVG(total_marks) INTO avgMarks FROM studentMarks;
    SELECT COUNT(*) INTO countBelowAverage FROM studentMarks WHERE total_marks < avgMarks;
END //
DELIMITER ;

CALL spCountOfBelowAverage(@countBelowAverage);
SELECT @countBelowAverage;


























