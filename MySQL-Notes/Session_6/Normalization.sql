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










