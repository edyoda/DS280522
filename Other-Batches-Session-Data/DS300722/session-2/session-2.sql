# Show databases

# ";" is a default delimiter
# DELIMITER ++ // $$

SHOW DATABASES;

CREATE DATABASE db_1;

USE db_1;

CREATE TABLE customer (
customerID SMALLINT NOT NULL,
FName VARCHAR(20) NOT NULL,
LName VARCHAR(20) NOT NULL,
FullName VARCHAR(40) NOT NULL,
Age SMALLINT NOT NULL);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1001,'Alex','Bowde','Alex Bowde',14);

SELECT * FROM customer;

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(2435,'Boy','George','Boy George',34);

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1245,'Tim','Walter','Tim Walter',45);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1256,'Alice','Croe','Alice Croe',24);
INSERT INTO customer (customerID,FName,LName,FullName) VALUES(2235,'Sam','Xu','Sam Xu');

INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);
INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',23);


INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1102,'Joe','Dow','Joe Dow',127);


INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1256,'Alice','Croe','Alice Croe',12);


INSERT INTO customer (customerID,FName,LName,FullName,Age) VALUES(1256,'Alice','Croe','Alice Croe',12);



SELECT * FROM customer;

















