--Create Database--
CREATE DATABASE skilvul_music_streaming;


--Use Database--
USE skilvul_music_streaming;


--Create table--
CREATE TABLE user (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)
);



--Create table--
CREATE TABLE singer (
    singer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);



--Create table--
CREATE TABLE album (
    album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);



--Create table--
CREATE TABLE album (
    album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    singer_id INT NOT NULL,
    CONSTRAINT fk_track_singer_singer_id
    FOREIGN KEY(singer_id)
    REFERENCES singer(singer_id)
);



--Create table--
CREATE TABLE playlist (
    playlist_id INT NOT NULL,
    name VARCHAR(50),
    user_id INT NOT NULL,
    CONSTRAINT fk_playlist_user_user_id
    FOREIGN KEY(user_id)
    REFERENCES user(user_id) 
);


--Create table--
CREATE TABLE tracks (
    tracks_id INT NOT NULL,
    title VARCHAR(50),
    singer_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT fk_track_singer_id
    FOREIGN KEY(singer_id)
    REFERENCES singer(singer_id),
    CONSTRAINT fk_track_album_id
    FOREIGN KEY(album_id)
    REFERENCES album(album_id)
);



--Create table conjunction--
CREATE TABLE playlist_track (
    id INT NOT NULL auto_increment primary key ,
    tracks_id    INT NOT NULL ,
    playlist_id INT NOT NULL ,
    CONSTRAINT fk_track_conj
    FOREIGN KEY (tracks_id) 
    REFERENCES tracks (tracks_id),
    CONSTRAINT fk_playlist_conj
    FOREIGN KEY (playlist_id) 
    REFERENCES playlist (playlist_id)
);



--Show table--
SHOW TABLES;






