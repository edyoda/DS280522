# Show databases

# ";" is a default delimiter
# DELIMITER ++ // $$

SHOW DATABASES;

CREATE DATABASE db_1;

USE db_1;

CREATE TABLE customer (
customerID smallint,
FName varchar(20),
LName varchar(20),
FullName varchar(40),
Age int);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1001,'Alex','Bowde','Alex Bowde',14);

SELECT * FROM customer;

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(2435,'Boy','George','Boy George',34);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1245,'Tim','Walter','Tim Walter',45);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1001,'Alex','Bowde','Alex Bowde',14);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1001,'Alex','Bowde','Alex Bowde',14);






