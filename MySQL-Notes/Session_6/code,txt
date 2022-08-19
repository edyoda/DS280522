
DROP DATABASE IF EXISTS db_normalization;
CREATE DATABASE db_normalization;
USE db_normalization;
CREATE TABLE tb_not_normalize (
    full_name VARCHAR(20) NOT NULL,
    physical_address VARCHAR(50) NOT NULL,
    movies_rented VARCHAR(100) NOT NULL,
    salutation VARCHAR(5) NOT NULL
);

INSERT INTO tb_not_normalize (full_name, physical_address, movies_rented, salutation) VALUES ('Janet Jones', 'First Street Plot No.4', 'Pirates of Caribean, Clash of Titans', 'Ms.');
INSERT INTO tb_not_normalize (full_name, physical_address, movies_rented, salutation) VALUES ('Robert Phill', '3rd Street 34', 'Forgetting Sarah Marshal, Daddys Little Girls', 'Mr.');
INSERT INTO tb_not_normalize (full_name, physical_address, movies_rented, salutation) VALUES ('Robert Phil', '5th Avenue', 'Clash of Titans', 'Mr.');

SELECT * FROM tb_not_normalize;

CREATE TABLE tb_1NF_normalized (
    full_name VARCHAR(20) NOT NULL,
    physical_address VARCHAR(50) NOT NULL,
    movies_rented VARCHAR(100) NOT NULL,
    salutation VARCHAR(5) NOT NULL
);

INSERT INTO tb_1NF_normalized (full_name, physical_address, movies_rented, salutation) VALUES ('Janet Jones', 'First Street Plot No.4', 'Pirates of Caribean, Clash of Titans', 'Ms.');
INSERT INTO tb_1NF_normalized (full_name, physical_address, movies_rented, salutation) VALUES ('Janet Jones', 'First Street Plot No.4', 'Clash of Titans', 'Ms.');
INSERT INTO tb_1NF_normalized (full_name, physical_address, movies_rented, salutation) VALUES ('Robert Phil', '3rd Street 34', 'Forgetting Sarah Marshal', 'Mr.');
INSERT INTO tb_1NF_normalized (full_name, physical_address, movies_rented, salutation) VALUES ('Robert Phil', '3rd Street 34', 'Daddys Little Girls', 'Mr.');
INSERT INTO tb_1NF_normalized (full_name, physical_address, movies_rented, salutation) VALUES ('Robert Phil', '5th Avenue', 'Clash of Titans', 'Mr.');

SELECT * FROM tb_1NF_normalized;

CREATE TABLE tb_2NF_normalized_tb_1 (
    membership_id  INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    full_name VARCHAR(20) NOT NULL,
    physical_address VARCHAR(50) NOT NULL,
    salutation VARCHAR(5) NOT NULL
);

INSERT INTO tb_2NF_normalized_tb_1 (full_name, physical_address, salutation) VALUES ('Janet Jones', 'First Street Plot No.4', 'Ms.');
INSERT INTO tb_2NF_normalized_tb_1 (full_name, physical_address, salutation) VALUES ('Robert Phil', '3rd Street 34', 'Mr.');
INSERT INTO tb_2NF_normalized_tb_1 (full_name, physical_address, salutation) VALUES ('Robert Phil', '5th Avenue', 'Mr.');

SELECT * FROM tb_2NF_normalized_tb_1;


CREATE TABLE tb_2NF_normalized_tb_2 (
    membership_id  INT NOT NULL,
    movies_rented VARCHAR(100) NOT NULL
);

INSERT INTO tb_2NF_normalized_tb_2 (membership_id, movies_rented) VALUES (1, 'Pirates of Caribean, Clash of Titans');
INSERT INTO tb_2NF_normalized_tb_2 (membership_id, movies_rented) VALUES (1, 'Clash of Titans');
INSERT INTO tb_2NF_normalized_tb_2 (membership_id, movies_rented) VALUES (2, 'Forgetting Sarah Marshal');
INSERT INTO tb_2NF_normalized_tb_2 (membership_id, movies_rented) VALUES (2, 'Daddys Little Girls');
INSERT INTO tb_2NF_normalized_tb_2 (membership_id, movies_rented) VALUES (3, 'Clash of Titans');
SELECT * FROM tb_2NF_normalized_tb_2;
