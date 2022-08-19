USE customers_and_orders;

SELECT * FROM customers;
-- base customers ,  orders

-- VIEW 

CREATE VIEW view_1 AS SELECT * FROM customers;

-- CRETAE VIEW view_name AS SELECT * FROM customers;

 SELECT * FROM view_1;

CREATE VIEW view_2 AS SELECT * FROM customers WHERE id=2;

SELECT * FROM view_2;


