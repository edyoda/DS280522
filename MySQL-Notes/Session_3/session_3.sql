SELECT * FROM books;

-- LIMIT and OFFSETS

SELECT * FROM books LIMIT 12;


-- IF WE WANT A TABLE FROM 6-10 THEN?

SELECT *  FROM books LIMIT 15 OFFSET 5;

SELECT * FROM books;

-- ORDER BY

SELECT * FROM books ORDER BY pages, stock_quantity DESC;

-- Update query

SELECT * FROM books WHERE title = 'White Noise';

UPDATE books
SET stock_quantity = 100
WHERE title = 'White Noise'; 

-- Update author_lname to 'Smith' WHERE author_fname is 'Raymond'

UPDATE books
SET author_lname = 'Smith'
WHERE author_fname = 'Raymond'; 

-- set stock_quantity to 60

UPDATE books
SET stock_quantity = 60
WHERE title = 'White Noise'; 

-- lname  to Carver  

UPDATE books
SET author_lname = 'Carver'
WHERE stock_quantity = 23; 

UPDATE books
SET pages = 100;


-- Alter Table

ALTER TABLE name_of_table
ADD name_of_new_column details_of_column
[ FIRST | AFTER name_of_existing_column ];

ALTER TABLE books
ADD availability VARCHAR(3) DEFAULT 'Yes';

ALTER TABLE books
ADD availability_1 VARCHAR(3) DEFAULT 'Yes'
FIRST;

ALTER TABLE books 
CHANGE COLUMN availability_2 availability_3 VARCHAR(100) DEFAULT 'Yess';

SELECT * FROM books;

INSERT INTO books()VALUES();







