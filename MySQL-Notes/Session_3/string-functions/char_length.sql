SELECT *
FROM books;

SELECT DISTINCT(CONCAT(author_fname, " " , author_lname)) AS fullname_of_author
FROM books ;