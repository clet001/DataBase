CREATE DATABASE e_commerce;

CREATE TABLE users(
id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100) UNIQUE,
pass_word VARCHAR(20)
);

CREATE TABLE products(
id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
product_brand VARCHAR(100)
);

CREATE TABLE orders(
orders_date DATE,
orders_amount INT,
orders_delivery_status BOOLEAN
);