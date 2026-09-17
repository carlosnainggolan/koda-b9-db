CREATE TABLE Products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL CHECK (price > 0)
);

CREATE TABLE Sales (
    id SERIAL PRIMARY KEY,
    product_id INT REFERENCES Products(id) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0)
);

INSERT INTO Products (name, price)
VALUES ('Laptop', 1000), ('Phone', 600), ('Tablet', 400);

INSERT INTO Sales (product_id, quantity)
VALUES (1, 5), (2, 10), (3, 7), (1, 3);

-- SELECT Products.name, SUM(Sales.quantity)
-- FROM Sales
-- JOIN Products ON Products.id = Sales.product_id
-- WHERE Sales.quantity = (
--   SELECT quantity
--   FROM Sales
--   WHERE Sales.quantity >= 7 AND Products.id = Sales.product_id
-- )
-- GROUP BY Sales.product_id, products.name;

WITH total_sales AS (
  SELECT Products.name as name, Products.id as id, SUM(Sales.quantity) AS "Total", SUM(Sales.quantity*Products.price) AS "Total Price"
  FROM Products
  JOIN Sales ON Products.id = Sales.product_id
  -- JOIN Products ON Products.name = Sales.product_id
  GROUP BY Products.id
)
SELECT name, "Total Price"
FROM total_sales
WHERE "Total" >= 7;

SELECT name, "Total Price"
FROM (
  SELECT Products.name as name, Products.id as id, SUM(Sales.quantity) AS Total, SUM(Sales.quantity*Products.price) AS "Total Price"
  FROM Products
  JOIN Sales ON Products.id = Sales.product_id
  GROUP BY Products.id
)
WHERE Total >= 7;

-- SELECT Products.name as name, Sales.product_id, SUM(Sales.quantity) AS "Total", SUM(Sales.quantity*Products.price) AS "Total Price"
-- FROM Sales
-- JOIN Products ON Products.id = Sales.product_id
-- GROUP BY Products.name, Sales.Product_id
-- HAVING SUM(Sales.quantity) IN (
--   SELECT SUM(Sales.quantity)
--   FROM Sales
--   GROUP BY Sales.Product_id
--   HAVING SUM(Sales.quantity) >= 7
-- )

-- SELECT *
-- FROM (
--   SELECT Products.name as name, Sales.product_id, SUM(Sales.quantity) AS "Total", SUM(Sales.quantity*Products.price) AS "Total Price"
--   FROM Sales
--   JOIN Products ON Products.id = Sales.product_id
--   GROUP BY Products.name, Sales.Product_id
--   HAVING SUM(Sales.quantity) >= 7
-- );




