CREATE DATABASE customers_and_orders;
-- DROP DATABASE customers_and_orders;
USE customers_and_orders;

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100)
);

CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE,
	amount DECIMAL(8,2),
	customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


SELECT * FROM customers;
SELECT * FROM orders;

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       



-- JOIN

SELECT * FROM customers, orders;

-- implicit
SELECT first_name, last_name, order_date, amount, customer_id
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- explicit
SELECT first_name, last_name, customer_id
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;


-- LEFT JOIN 

SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

-- RIGHT JOIN 

SELECT first_name, last_name, order_date, amount
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;




SELECT 
	first_name, 
	last_name, 
	IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;








