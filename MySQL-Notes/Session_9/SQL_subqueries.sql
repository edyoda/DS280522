USE classicmodels;

-- two tables 
-- Subqueries with the SELECT Statement
SELECT 
    customerNumber
FROM
    customers
WHERE
    creditLimit > 45000;








SELECT 
    *
FROM
    orders
WHERE
    customerNumber IN (SELECT 
    customerNumber
FROM
    customers
WHERE
    creditLimit > 45000);
    
    
SELECT 
    *
FROM
    orders
WHERE
    customerNumber IN (SELECT 
    customerNumber
FROM
    orders
WHERE
    status = "Shipped");




