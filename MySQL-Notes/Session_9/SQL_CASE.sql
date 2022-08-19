-- CREATE A DATABASE sesion_9_case
DROP DATABASE IF EXISTS sesion_9_case;

CREATE DATABASE sesion_9_case;

USE sesion_9_case;

CREATE TABLE case_examples (
OrderID INT PRIMARY KEY AUTO_INCREMENT,
Quantity INT,
price INT
 );
 
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (140, FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (140, FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (150, FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (FLOOR( RAND() * (200-100) + 100), FLOOR( RAND() * (200-100) + 100));
INSERT INTO case_examples (Quantity, price) VALUES (150, FLOOR( RAND() * (200-100) + 100));


SELECT OrderID, Quantity FROM case_examples;

SELECT OrderID, Quantity, 
(CASE
	WHEN Quantity > 150 THEN 'The quantity is greater than 150'
	WHEN Quantity = 150 THEN 'The quantity is 150'
	ELSE 'The quantity under 150'
END) AS QuantityText FROM case_examples;

-- pi = 3.14
SELECT PI();

SELECT PI() * 1 * 1 AS area_of_circle;

-- POW()  3*3*3*3 = 81

SELECT POW(3,4);

SELECT SIN(DEGREES(PI()/2));

SELECT SQRT(81);






