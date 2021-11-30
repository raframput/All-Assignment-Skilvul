--- Create Database ---
CREATE DATABASE skilvulbookstore;

--- Use Database ---
USE skilvulbookstore;

--- Create Table ---
CREATE TABLE penerbit (id INT NOT NULL auto_increment PRIMARY KEY,
    -> nama VARCHAR(50),
    -> kota VARCHAR(50) 
    -> );

--- Create Table ---
CREATE TABLE penulis (id INT(10) NOT NULL auto_increment PRIMARY KEY,
    -> nama VARCHAR(50),
    -> kota VARCHAR(50)
    -> );

--- Create Table ---
CREATE TABLE buku ( id INT NOT NULL auto_increment, 
    ->     ISBN VARCHAR(50), 
    ->     judul VARCHAR(50), 
    ->     harga INT, 
    ->     stock INT, 
    ->     penulis INT, 
    ->     penerbit INT, 
    ->     FOREIGN KEY (penulis) REFERENCES penulis(id),  
    ->     FOREIGN KEY (penerbit) REFERENCES penerbit(id) ,
    ->     CONSTRAINT pk_buku PRIMARY KEY (id) );




--- Insert ---
INSERT INTO `penulis` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'rafly', 'bekasi'), 
    (NULL, 'rei', 'jakarta'),
    (NULL, 'annisa', 'bekasi'),
    (NULL, 'rafi', 'bandung'), 
    (NULL,'zahra', 'jakarta'), 
    (NULL, 'ardana', 'cikarang');



---insert ---
INSERT INTO `penerbit` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'ryan', 'bekasi'), 
    (NULL, 'putri', 'bogor'), 
    (NULL, 'rachel', 'tangerang'), 
    (NULL, 'rosa', 'lampung'),
    (NULL, 'rafly', 'bekasi'),
    (NULL, 'rafa', 'jakarta'),
    (NULL, 'harsya', 'karawang'),
    (NULL, 'nindy', 'depok');



--- insert ---
INSERT INTO `buku` (`id`, `ISBN`, `judul`, `harga`, `stock`, `penulis`, `penerbit`) VALUES 
    (NULL, '24', 'all about us', '210000', '10', '5', '6'), 
    (NULL, '50', 'our adventure', '76500', '25', '5', '6'), 
    (NULL, '21', 'the fault in our stars', '93500', '100', '5', '6'), 
    (NULL, '85', 'remember me', '50000', '35', '5', '6');



--- join ---
SELECT *
FROM buku
INNER JOIN penerbit
ON buku.id = penerbit.id;



--- left ---
SELECT *
FROM buku
LEFT JOIN penerbit
ON buku.id = penerbit.id;



--- right ---
SELECT *
FROM buku
RIGHT JOIN penerbit
ON buku.id = penerbit.id;



--- max ---
SELECT MAX(harga)
FROM buku
WHERE stock < 10;



--- min ---
SELECT MIN(harga)
FROM buku;



--- count ---
SELECT COUNT(harga)
FROM buku
WHERE harga < 10000;