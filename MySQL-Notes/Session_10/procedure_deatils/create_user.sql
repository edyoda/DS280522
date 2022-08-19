-- for creating a new user

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost';

FLUSH PRIVILEGES;

SELECT 
   user 
FROM 
   mysql.user;