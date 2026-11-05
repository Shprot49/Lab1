CREATE TABLE authors (
autor_id SERIAL PRIMARY KEY,
surname VARCHAR(50) NOT NULL,
first_name VARCHAR(50) NOT NULL,
patronymic VARCHAR(50),
date_of_birth DATE NOT NULL,
nationality VARCHAR(50) NOT NULL,
type_of_activity VARCHAR(100)
);

CREATE TABLE books (
book_id SERIAL PRIMARY KEY,
autor_id INTEGER NOT NULL,
title VARCHAR(200) NOT NULL,
year_of_publication INTEGER NOT NULL,
number_of_pages INTEGER NOT NULL,
publisher VARCHAR(100) NOT NULL,
FOREIGN KEY (autor_id) REFERENCES authors (autor_id)
);