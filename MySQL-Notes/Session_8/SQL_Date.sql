-- DATES and DATE FUNCTIONS

-- https://www.mysqltutorial.org/mysql-data-types.aspx
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

CREATE TABLE people
(
	name VARCHAR(100),
	birthdate DATE,
	birthtime TIME,
	birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Toaster', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;


SELECT name, birthdate, DAY(birthdate)
FROM people;

SELECT name, birthdate, DAYNAME(birthdate)
FROM people;

SELECT name, birthdate, DAYOFWEEK(birthdate)
FROM people;

SELECT name, birthdate, DAYOFYEAR(birthdate)
FROM people;

SELECT
	name,
	birthdt,
	CONCAT
	(
		MONTHNAME(birthdt),
		' ',
		DAY(birthdt),
		', ',
		YEAR(birthdt)
	) as 'full date'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, '%M %D, %Y') AS 'full date'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, 'Born on a %W') AS 'birthday'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') AS 'full date'
FROM people;



SELECT
	name,
	birthdate,
	DATEDIFF(NOW(), birthdate)
FROM people;


SELECT
	birthdt,
	DATE_ADD(birthdt, INTERVAL 1 MONTH) AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt - INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
FROM people;



-- exercises

CREATE TABLE inventory
(
	item_name VARCHAR(255),
	price DECIMAL(8,2),
	quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w');

SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets
(
	content VARCHAR(140),
	username VARCHAR(20),
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username)
VALUES ('this is my first tweet', 'coltscat');

INSERT INTO tweets (content, username)
VALUES ('this is my second tweet', 'coltscat');