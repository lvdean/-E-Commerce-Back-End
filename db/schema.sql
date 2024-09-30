-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

\c ecommerce_db;

CREATE TABLE category(
   id: SERIAL PRIMARY KEY, 
   category_name STRING NOT NULL);

CREATE TABLE product(
  id: INTEGER NOT NULL SERIAL PRIMARY KEY,
  product_name STRING NOT NULL,
  price DECIMAL NOT NULL,
  stock VARCHAR(10) INTEGER NOT NULL ,
  category_id INTEGER NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category(id));

CREATE TABLE tag(
id SERIAL PRIMARY KEY,
tag_name: STRING);

CREATE TABLE productTag(
id SERIAL PRIMARY KEY,
product_id INTEGER NOT NULL,
tag_id INTEGER NOT NULL,
FOREIGN KEY (product_id) REFERENCES product(id)
FOREIGN KEY (tag_id) REFERENCES tag(id));





