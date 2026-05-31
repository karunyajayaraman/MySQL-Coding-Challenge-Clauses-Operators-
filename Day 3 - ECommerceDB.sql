-- Day 3: SQL Coding Challenge – Clauses & Operators 
-- Database: ECommerceDB

CREATE DATABASE ECommerceDB;
USE ECommerceDB;

-- DISTINCT & AS

SELECT DISTINCT Product_name
FROM Product;

SELECT Product_name AS ProductName
FROM Product;

SELECT DISTINCT Product_ID
FROM Sales;

SELECT Price AS Product_Price
FROM Product;

-- WHERE Clause

SELECT * FROM Product
WHERE Price > 10000;

SELECT * FROM Product
WHERE Price < 5000;

SELECT * FROM Sales
WHERE Quantity = 2;

-- Comparison Operators

SELECT * FROM Product
WHERE Price >= 15000;

SELECT * FROM Sales
WHERE Quantity != 2;

SELECT * FROM Sales
WHERE Quantity <> 2;

-- Arithmetic Operators

SELECT product_name, price,
Price + (price * 0.10) AS Increased_Price
FROM Product;

SELECT sale_amount,
sale_amount + 500 AS Updated_amount
FROM Sales;

-- Logical Operators

SELECT * FROM Product WHERE Price > 5000 and Price < 50000;
SELECT * FROM Sales WHERE Quantity = 2 OR quantity = 4;
SELECT * FROM Product WHERE price >20000;

-- IS NULL / IS NOT NULL

SELECT * FROM sales WHERE product_id is NULL;
SELECT * FROM Product WHERE price is NOT NULL;

-- IN and NOT IN

SELECT * FROM Product WHERE Product_id IN (1,3,5);
SELECT * FROM Product WHERE Product_id NOT IN (2,4,6);

-- BETWEEN and NOT BETWEEN

SELECT * FROM Product WHERE price BETWEEN 1000 and 20000;
SELECT * FROM Product WHERE price NOT BETWEEN 5000 and 50000;

-- LIKE and NOT LIKE

SELECT * FROM Product WHERE product_name LIKE'M%';
SELECT * FROM Product WHERE product_name LIKE'%e';
SELECT * FROM Product WHERE product_name LIKE'%Phone%';
SELECT * FROM Product WHERE product_name NOT LIKE's%';

SELECT * FROM Product WHERE product_name LIKE('%top%');
SELECT * FROM Product WHERE product_name LIKE('M____');

-- Mixed Questions (Exam Level)

SELECT * FROM Product WHERE price BETWEEN 1000 and 20000 AND product_name LIKE 'M%';

SELECT * FROM sales WHERE Quantity BETWEEN 2 and 10;

SELECT * FROM Product WHERE Product_id IN (1,2,3) AND price > 5000;

SELECT DISTINCT quantity
FROM Sales;	









