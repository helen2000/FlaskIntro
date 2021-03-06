DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT UNIQUE NOT NULL,
password TEXT NOT NULL
);

CREATE TABLE post (
id integer PRIMARY KEY AUTOINCREMENT,
author_id integer NOT NULL,
Created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
title text NOT NULL,
body text NOT NULL,
FOREIGN KEY (author_id) REFERENCES user (id)
);