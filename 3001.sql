--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 3001

CREATE TABLE products (
id numeric PRIMARY KEY,
name varchar(50),
type char,
price numeric
);

GRANT SELECT ON products TO amaral@localhost;

INSERT INTO products (id , name, type, price)
VALUES
(1, 'Monitor',  'B', 0),
(2, 'Headset',  'A', 0),
(3, 'PC Case',  'A', 0),
(4, 'Computer Desk', 'C', 0),
(5, 'Gaming Chair', 'C', 0),
(6, 'Mouse',  'A', 0);

UPDATE products SET products.price = 20 WHERE products.type = 'A' 
UNION ALL 
UPDATE products SET products.price = 70 WHERE products.type = 'B'
UNION ALL
UPDATE products SET products.price = 530.5 WHERE products.type = 'C';

DROP TABLE products;
