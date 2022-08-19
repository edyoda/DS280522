-- ------------------------------ --
-- Interview Practice Questions  ---
-- --------------------------------- 

-- Write a SQL statement to wipe a table 'Temporary' from memory.
DROP TABLE Temporary;

-- Write a SQL query to remove first 1000 records from table 'Temporary' based on 'id'.
-- id  is PK and AI there are 5000 records

DELETE FROM Temporary WHERE id < 1001;


DROP DATABASE IF EXISTS limit_delete;
CREATE DATABASE limit_delete;
USE  limit_delete;

CREATE TABLE lim_del (
id INT PRIMARY KEY AUTO_INCREMENT,
quantity INT UNIQUE
);

INSERT INTO lim_del(quantity)VALUES(12);


SELECT * FROM lim_del;

DELETE FROM lim_del LIMIT 3;

-- Write a SQL statement to delete the table 'Temporary' while keeping its columns intact.

TRUNCATE TABLE Temporary;

-- What is a UNIQUE constraint?



-- Write a SQL query to update the field "status" in table "orders" from "Shipped" to "SHIPPED".
USE classicmodels;

UPDATE orders SET status = "SHIPPED" WHERE status  = "Shipped";

UPDATE orders SET status = "Shipped" WHERE status  = "SHIPPED";


-- Write a SQL query to select the field "app_id" in table "applications" where "app_id" less than 1000.
SELECT app_id FROM applications WHERE app_id < 1000;


-- How to create empty table "order_dup" with the same structure as "orders" table in classicmodels database?

CREATE TABLE order_dup LIKE orders;



