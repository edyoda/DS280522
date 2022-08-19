USE customers_and_orders;

SELECT * FROM customers;

SELECT * FROM orders;

CREATE VIEW view_1 AS SELECT * FROM customers;

 SELECT email FROM view_1;