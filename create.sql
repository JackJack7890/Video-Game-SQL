DROP DATABASE IF EXISTS video_games;
CREATE DATABASE video_games;
USE video_games;

CREATE TABLE IF NOT EXISTS games (
    Name VARCHAR(255) NOT NULL,
    Release_Year INT(5),
    Publisher VARCHAR(255),
    Developer VARCHAR(255),
    Amount_Of_Players VARCHAR(255),
    Genre VARCHAR(255),
    PRIMARY KEY (Name)
);

CREATE TABLE IF NOT EXISTS publishers (
    Name VARCHAR(255) NOT NULL,
    Founded DATE,
    Headquarters VARCHAR(255),
    PRIMARY KEY (Name)
);

CREATE TABLE IF NOT EXISTS developers (
    Name VARCHAR(255) NOT NULL,
    Founded DATE,
    Headquarters VARCHAR(255),
    PRIMARY KEY (Name)
);
