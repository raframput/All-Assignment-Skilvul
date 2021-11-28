-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore1;


-- Use Database --
USE bookstore1;


-- Show Table --
SHOW tables;


-- Create Table --
CREATE TABLE books ( 
id INT auto_increment PRIMARY KEY, 
author1 VARCHAR(100) not null, 
author2 VARCHAR(100), 
author3 VARCHAR(100), 
title VARCHAR(100), 
description VARCHAR(100), 
place_sell VARCHAR(3), 
stock INT DEFAULT 0, 
creation_date DATETIME  DEFAULT  current_timestamp  ON UPDATE current_timestamp );


-- Update Table --
ALTER TABLE books 
ADD price INT DEFAULT 0;


-- Update Table --
ALTER TABLE books
ADD status ENUM('available','out of stock','limited');


-- Delete Table --
ALTER TABLE books DROP place_sell;



-- Insert Table --
INSERT INTO books(author1, author2, author3, title, description, stock, creation_date, price, status) VALUES('fani','fini','feni','buaya','buku anak anak',300,'2012/06/20 09:20:15',50000,'limited'),
 ('sara','sari','siri','ular','buku tentang binatang',50,'2007/11/21 12:35:10',35000,'limited'),
('Annisa','Zahra','Rafly','All About Us','Our Adventure',1,'2019/07/24 16:27:01',1000000,'limited');

-- Select Table --
SELECT * from books;

-- Alias --
SELECT id as ID, author1 as A1, author2 as A2, author3 as A3
FROM books;

-- Select Where --
SELECT * from books WHERE ID = 1;


-- Operator AND --
SELECT * from books WHERE ID = 1 and author1 = 'fani' ;


-- Operator OR  --
SELECT * from books WHERE ID = 1 or author2 = 'vina' ;


-- Operator NOT --
SELECT * from books WHERE not ID = 1; 


--- Order By ---
SELECT * from books order by id ASC;


--- Limit ---
SELECT * from books
    -> limit 2;


--- Update ---
UPDATE books
SET author1 = 'Rafa', price = 100000
WHERE id = 1;


--- Delete Row ---
DELETE from books WHERE id = 3;