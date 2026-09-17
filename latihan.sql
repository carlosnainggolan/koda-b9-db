CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL CHECK (price > 0)
);

INSERT INTO products (product_name, price)
VALUES ('Laptop', 1000), ('Mouse', 50), ('Keyboard', 200);

SELECT product_name, price
FROM products
WHERE price > (
  SELECT AVG(price)
  FROM products
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    customer_id INT NOT NULL,
    amount INT NOT NULL CHECK (amount > 0)
);

INSERT INTO transactions(customer_id, amount)
VALUES (101,500), (101, 300), (102, 150);

SELECT t1.customer_id
FROM transactions t1
WHERE t1.amount >= (
  SELECT AVG(t2.amount)
  FROM transactions t2
  WHERE t2.customer_id = t1.customer_id
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price_per_unit FLOAT NOT NULL CHECK (price_per_unit > 0.00),
    sale_date TIMESTAMP NOT NULL
);

INSERT INTO sales (customer_id, product, quantity, price_per_unit, sale_date)
VALUES
    (101, 'Keyboard', 2, 25.00, '2024-04-01'),
    (102, 'Mouse', 1, 15.00, '2024-04-01'),
    (101, 'Monitor', 1, 200.00, '2024-04-02'),
    (103, 'Keyboard', 1, 25.00, '2024-04-02'),
    (101, 'Mouse', 3, 15.00, '2024-04-03');

WITH transaction AS (
  SELECT customer_id, (quantity*price_per_unit) AS "Total", product
  FROM sales
)
SELECT customer_id
FROM transaction
WHERE product = 'Keyboard' AND "Total" > 30;

WITH one_sale AS (
  SELECT product, COUNT(product) AS "Total"
  FROM sales
  GROUP BY product
)
SELECT product
FROM one_sale;


CREATE DATABASE paymentgateway;