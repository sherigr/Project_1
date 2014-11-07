DROP TABLE IF EXISTS blogs CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS tags CASCADE;
DROP TABLE IF EXISTS blogs_tags CASCADE;

CREATE TABLE authors (
id SERIAL PRIMARY KEY,
name VARCHAR (255),
img_url text,
posted_at timestamp
);

CREATE TABLE blogs (
id SERIAL PRIMARY KEY,
posted_at timestamp,
contents VARCHAR(255),
title VARCHAR(255),
author_id INTEGER 
);

CREATE TABLE tags (
id SERIAL PRIMARY KEY,
category VARCHAR(255)
);

CREATE TABLE blogs_tags (
tag_id INTEGER REFERENCES tags,
blog_id INTEGER REFERENCES authors
)
