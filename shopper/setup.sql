-- See shopper.jpeg
-- Terminal: psql
-- In psql: CREATE DATABASE shop_db;
-- Terminal: psql -f setup.sql -d shop_db;

CREATE TABLE shopper (
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE item (
  id SERIAL PRIMARY KEY,
  type TEXT,
  source TEXT,
  price NUMERIC
);

-- shopper, item relationship
-- m:n (many to many)
CREATE TABLE purchase (
    id SERIAL PRIMARY KEY,
    shopper_id SERIAL,
    item_id SERIAL,
    quantity INTEGER
);

INSERT INTO shopper (name) VALUES('Bill Bill');
INSERT INTO shopper (name) VALUES('Bob Bob');
INSERT INTO shopper (name) VALUES('Tom Tom');

INSERT INTO item (type, source, price) VALUES('Apple', 'Farm', 1.50);
INSERT INTO item (type, source, price) VALUES('Car', 'Toyota', 100000);
INSERT INTO item (type, source, price) VALUES('Rug', 'Jesus', 150);

-- Bill has id 1
INSERT INTO purchase (shopper_id, item_id, quantity) VALUES(1, 1, 5);
INSERT INTO purchase (shopper_id, item_id, quantity) VALUES(1, 2, 2);
INSERT INTO purchase (shopper_id, item_id, quantity) VALUES(1, 2, 5);
