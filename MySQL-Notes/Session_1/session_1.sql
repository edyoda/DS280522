SHOW DATABASES;

CREATE DATABASE testdb;

USE testdb;

CREATE TABLE customers 
(
	id INT PRIMARY KEY UNIQUE NOT NULL ,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);

INSERT INTO customers (id, first_name, last_name) 
VALUES (2,'Joe', 'George');


DESC customers;

SELECT * FROM  customers;

SELECT first_name FROM  customers;

SELECT first_name, email FROM  customers;

DROP TABLE customers;

















       
SELECT * FROM  customers;

DROP TABLE customers;


