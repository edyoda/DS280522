-- creating a database book_shop;

CREATE DATABASE book_shop;

-- use database

USE book_shop;


-- create a table books

CREATE TABLE books
(book_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(100),
author_fname VARCHAR(100),
author_lname VARCHAR(100),
released_year INT,
stock_quantity INT,
pages INT,
PRIMARY KEY(book_id)
);

SELECT * FROM books;

DESC books;


INSERT INTO books(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343)
;

SELECT * FROM books;

SELECT 
    *
FROM
    books
WHERE
    released_year = 2004;
    
    
SELECT 
    *
FROM
    books
WHERE
    author_fname='david';
    
select 
    *
FROM
    books
WHERE
    (released_Year > 2003);
    
-- filter realease year 2012

select 
    *
FROM
    books
WHERE
    released_Year = 2012;
    
-- filter pages > 420

select 
    *
FROM
    books
WHERE
    pages > 420;
    
-- filter author firstname is not equal  Dave

select 
    *
FROM
    books
WHERE
    author_fname != 'Dave';
    
-- filter rel.year >=2004 AND pages<500

SELECT 
    *
FROM
    books
WHERE
    (released_year >= 2004) AND (pages < 500);
    
-- filter rel.year >=2004 OR pages<500
-- cond_1 OR cond_2

SELECT 
    *
FROM
    books
WHERE
   (released_year >= 2004) OR (pages < 500);
    
    
-- filter rel.year >=2004 OR pages<500
-- cond_1 OR cond_2

SELECT 
    *
FROM
    books
WHERE
    NOT((released_year >= 2004) OR (pages < 500));
    
    
-- NOT(cond_1 OR cond_2) ==> NOT cond1 AND NOT cond_2


-- rel. year = 2000

SELECT 
    *
FROM
    books
WHERE
    NOT(released_year = 2000);
    
-- all columns in table "book" where  rel. year BETWEEN(2003,2010)

-- BETWEEN(2003,2010) equivalent of less than equal to 2010 and greater than equal to 2003

SELECT 
    *
FROM
    books
WHERE
    released_year >= 2003 AND released_year <=2010;
    
 -- LIKE

SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE '%La%';
    
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE '%La%';    
    
    
-- DELETE FROM 

DELETE FROM books 
WHERE released_year = 2004;

USE book_shop;


DROP TABLE books;
DROP DATABASE book_shop;


    
    





     

    



    
    











