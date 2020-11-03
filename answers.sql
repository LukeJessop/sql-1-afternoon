CREATE TABLE person
(person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INT, height INT, city VARCHAR(200), favorite_color VARCHAR(200))

INSERT INTO person 
(name, age, height, city, favorite_color) 
VALUES
('Luke', 18, 179, 'utah', 'all'),
('Richard', 18, 182, 'utah', 'blue'),
('Brayden', 18, 182, 'utah', 'red'),
('Nathan', 18, 182, 'utah', 'green'),
('Emma', 18, 152, 'utah', 'black')

SELECT person 
FROM person 
ORDER BY height 
DESC

SELECT person
FROM person 
ORDER BY height 
ASC

SELECT person
FROM person 
ORDER BY age 
DESC

SELECT person
FROM person
ORDER BY age > 20

SELECT person
FROM person
ORDER BY age = 18

SELECT person
FROM person
WHERE age < 20 
OR age > 30

SELECT person
FROM person
WHERE age != 27

SELECT person
FROM person
WHERE favorite_color != 'red'

SELECT person
FROM person
WHERE  favorite_color IN ('orange', 'green', 'blue')

SELECT person
FROM person
WHERE favorite_color IN ('yellow', 'purple')


CREATE TABLE orders
(order_id SERIAL PRIMARY KEY, person_id INT, product_name VARCHAR(200), product_price INT, quantity INT)

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(0, 'Oranges', 1.00, 1),
(1, 'Apples', 3.00, 1),
(2, 'Bananas', .50, 1),
(3, 'Grapes', .25, 1),
(4, 'Melon', 5.00, 1)

SELECT * 
FROM orders

SELECT SUM(quantity)
FROM orders

SELECT SUM(product_price * quantity)
FROM orders

SELECT SUM(product_price * quantity) 
FROM orders
WHERE person_id = 0

INSERT INTO artist
(name)
VALUES
('vangoh'),
('davinci'),
('michelangelo')

SELECT * 
FROM artist
ORDER BY name
DESC LIMIT 10

SELECT *
FROM artist 
ORDER BY name
ASC LIMIT 5

SELECT * 
FROM artist
WHERE name
LIKE 'Black%'

SELECT * 
FROM artist
WHERE name
LIKE '%Black%'

SELECT count(*) 
FROM invoice
WHERE billing_country = 'USA'


SELECT max(total)
FROM invoice

SELECT min(total) 
FROM invoice

SELECT *
FROM invoice
WHERE total > 5

SELECT count(*)
FROM invoice
WHERE total < 5

SELECT count(*)
FROM invoice
WHERE billing_state in ('CA','TX','AZ')

SELECT AVG(total)
FROM invoice

SELECT SUM(total) 
FROM invoice
