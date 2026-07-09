DROP TABLE IF EXISTS Retail
-- CREATE TABLE
CREATE TABLE Products (
      product_id INT PRIMARY KEY,
	  product_name VARCHAR(50),
	  category VARCHAR(30),
	  brand VARCHAR(30),
	  price DECIMAL(10, 2),
	  stock_quantity INT,
	  rating DECIMAL (2, 1),
	  launch_date DATE
);
-- INSERT SAMPLE DATA
INSERT INTO products (product_id, product_name, category, brand, price, stock_quantity, rating, launch_date) VALUES
(1, 'Wireless Mouse', 'Electronics', 'Logitech', 799.00, 150, 4.3, '2022-01-10'),
(2, 'Bluetooth Headphones', 'Electronics', 'Boat', 1499.00, 80, 4.1, '2021-11-05'),
(3, 'Smartphone Stand', 'Electronics', 'Amkette', 299.00, 200, 3.9, '2023-02-20'),
(4, 'Men''s Cotton T-Shirt', 'Clothing', 'H&M', 599.00, 120, 4.0, '2022-06-15'),
(5, 'Women''s Denim Jacket', 'Clothing', 'Levis', 2499.00, 45, 4.5, '2021-09-01'),
(6, 'Running Shoes', 'Clothing', 'Puma', 3499.00, 60, 4.4, '2023-03-10'),
(7, 'Basmati Rice 5kg', 'Grocery', 'India Gate', 649.00, 300, 4.6, '2020-05-12'),
(8, 'Organic Honey 500g', 'Grocery', 'Dabur', 249.00, 250, 4.2, '2022-08-18'),
(9, 'Cooking Oil 1L', 'Grocery', 'Fortune', 189.00, 400, 4.0, '2021-04-25'),
(10, 'Non-stick Frying Pan', 'Home & Kitchen', 'Prestige', 899.00, 90, 4.3, '2022-10-30'),
(11, 'Electric Kettle', 'Home & Kitchen', 'Philips', 1299.00, 70, 4.1, '2023-01-05'),
(12, 'LED Table Lamp', 'Home & Kitchen', 'Wipro', 799.00, 110, 3.8, '2021-12-20'),
(13, 'Face Wash 100ml', 'Beauty', 'Himalaya', 199.00, 500, 4.4, '2022-02-14'),
(14, 'Shampoo 340ml', 'Beauty', 'Dove', 349.00, 320, 4.3, '2020-07-19'),
(15, 'Lipstick', 'Beauty', 'Lakme', 449.00, 180, 4.2, '2023-05-01'),
(16, 'Gaming Keyboard', 'Electronics', 'Razer', 3999.00, 40, 4.6, '2022-11-11'),
(17, 'Women''s Kurti', 'Clothing', 'Biba', 899.00, 95, 4.0, '2021-08-07'),
(18, 'Green Tea 25 Bags', 'Grocery', 'Lipton', 179.00, 350, 4.1, '2020-09-15'),
(19, 'Air Fryer', 'Home & Kitchen', 'Philips', 5999.00, 25, 4.5, '2023-04-22'),
(20, 'Sunscreen SPF 50', 'Beauty', 'Neutrogena', 599.00, 140, 4.4, '2022-05-30'),
(21, 'Wireless Earbuds', 'Electronics', 'JBL', 2999.00, 65, 4.5, '2023-06-12'),
(22, 'Smartwatch', 'Electronics', 'Noise', 2499.00, 55, 4.2, '2022-09-19'),
(23, 'Power Bank 10000mAh', 'Electronics', 'Mi', 999.00, 180, 4.3, '2021-07-08'),
(24, 'Laptop Sleeve', 'Electronics', 'American Tourister', 599.00, 130, 4.0, '2022-03-25'),
(25, 'USB Type-C Cable', 'Electronics', 'Portronics', 199.00, 400, 4.1, '2021-05-16'),
(26, 'Men''s Formal Shirt', 'Clothing', 'Van Heusen', 1299.00, 75, 4.2, '2022-04-02'),
(27, 'Women''s Leggings', 'Clothing', 'Jockey', 499.00, 200, 4.1, '2023-01-28'),
(28, 'Men''s Jeans', 'Clothing', 'Levis', 1999.00, 85, 4.3, '2021-10-14'),
(29, 'Kids T-Shirt', 'Clothing', 'H&M', 399.00, 150, 3.9, '2022-07-09'),
(30, 'Woolen Sweater', 'Clothing', 'Allen Solly', 1599.00, 50, 4.4, '2021-12-05'),
(31, 'Whole Wheat Atta 5kg', 'Grocery', 'Aashirvaad', 279.00, 500, 4.5, '2020-06-20'),
(32, 'Toor Dal 1kg', 'Grocery', 'Tata Sampann', 159.00, 450, 4.3, '2021-02-18'),
(33, 'Sugar 1kg', 'Grocery', 'Madhur', 55.00, 600, 4.0, '2020-03-30'),
(34, 'Instant Noodles Pack', 'Grocery', 'Maggi', 60.00, 700, 4.6, '2019-11-11'),
(35, 'Coffee Powder 200g', 'Grocery', 'Nescafe', 279.00, 300, 4.4, '2021-08-22'),
(36, 'Mixer Grinder', 'Home & Kitchen', 'Bajaj', 2999.00, 45, 4.2, '2022-01-30'),
(37, 'Induction Cooktop', 'Home & Kitchen', 'Prestige', 1899.00, 60, 4.1, '2022-12-15'),
(38, 'Bed Sheet Set', 'Home & Kitchen', 'Bombay Dyeing', 899.00, 100, 4.3, '2021-06-10'),
(39, 'Water Bottle 1L', 'Home & Kitchen', 'Milton', 349.00, 250, 4.4, '2023-02-05'),
(40, 'Ceiling Fan', 'Home & Kitchen', 'Havells', 1999.00, 40, 4.2, '2020-10-01'),
(41, 'Moisturizer 200ml', 'Beauty', 'Nivea', 399.00, 220, 4.3, '2022-03-14'),
(42, 'Perfume 100ml', 'Beauty', 'Fogg', 599.00, 160, 4.1, '2021-09-27'),
(43, 'Hair Oil 200ml', 'Beauty', 'Parachute', 149.00, 400, 4.5, '2020-08-13'),
(44, 'Face Cream 50g', 'Beauty', 'Ponds', 249.00, 300, 4.2, '2022-06-19'),
(45, 'Deodorant Spray', 'Beauty', 'Axe', 249.00, 350, 4.0, '2021-04-08'),
(46, 'Bluetooth Speaker', 'Electronics', 'JBL', 1999.00, 70, 4.4, '2022-08-03'),
(47, 'Formal Shoes', 'Clothing', 'Bata', 1499.00, 90, 4.1, '2021-11-21'),
(48, 'Basmati Rice Premium 10kg', 'Grocery', 'Daawat', 1199.00, 150, 4.6, '2021-01-17'),
(49, 'Non-stick Cookware Set', 'Home & Kitchen', 'Prestige', 2499.00, 35, 4.3, '2022-05-09'),
(50, 'Body Lotion 400ml', 'Beauty', 'Vaseline', 349.00, 280, 4.2, '2023-03-16');

SELECT * FROM Products;
-- BUSINESS QUESTIONS 
-- 1. Display the product_name and price of all Products.
SELECT product_name, price 
FROM Products;
-- 2. Display the product_name, category, and brands for all Products.
SELECT product_name, category, brand
FROM Products;
-- 3. Display all columns for products, but rename as product_name, and price as price Rs.
SELECT products AS product_name, price AS price_rs
FROM Products;
-- 4. Display all distinct categories avaliable in the store.
SELECT DISTINCT(category) AS categories_avaliable
FROM products;
-- 5. Display all distinct brands avaliable in the store.
SELECT DISTINCT(brand) AS brands_avaliable 
FROM Products;
-- 6. Find all products priced above Rs 1000.
SELECT product_name, price AS product_price 
FROM Products
WHERE price > 1000;
-- 7. Find all products in the 'Electronics' category.
SELECT product_name
FROM Products
WHERE category = 'Electronics';
-- 8. Find all products with a rating of 4.0 or higher.
SELECT product_name, rating 
FROM Products
WHERE rating >= 4.0;
-- 9. Find all products launched after January 1, 2022.
SELECT product_name, category, launch_date
FROM Products 
WHERE launch_date > '01-01-2022';
-- 10. Find all products with stock_quantity less than 100.
SELECT product_name, stock_quantity 
FROM Products
WHERE stock_quantity < 100;
-- 11. Find all products that belong to either 'Beauty' or 'Grocery' category.
SELECT product_name, category
FROM Products
WHERE category IN ('Beauty', 'Grocery');
-- 12. Find all products price between Rs 500 and Rs 2000. 
SELECT product_name, category, price
FROM Products
WHERE price BETWEEN 500 AND 2000;
-- 13. Find all products whose name contains the word like 'Women'.
SELECT * FROM Products 
WHERE product_name LIKE '%WOMEN%'
-- 14. Find the total number of products in the store.
SELECT COUNT(product_name) AS total_number_product
FROM Products;
-- 15. Find the average price of all products.
SELECT AVG(price) AS average_price
FROM Products;

SELECT ROUND(AVG(price)) AS average_price
FROM Products;
-- 16. Find the highest price product values.
SELECT MAX(price) AS maximum_price
FROM Products;
-- 17. Find the Lowest price product values.
SELECT MIN(price) AS minimum_price
FROM Products;
-- 18. Find the total_stock quantity across all products.
SELECT SUM(stock_quantity) AS total_stock_quantity
FROM Products;
-- 19. Find the average rating across all products.
SELECT AVG(rating) AS average_rating
FROM Products;

SELECT ROUND(AVG(rating)) AS average_rating
FROM Products;
-- 20. Find the total stock value of the entire store.
SELECT SUM(price * stock_quantity) AS total_stock_value
FROM Products;
-- 21. Find the total stock quantity per category.
SELECT category, SUM(price * stock_quantity) AS total_stock_quantity
FROM Products
GROUP BY category;
-- 22. Find the average price per category.
SELECT category, AVG(price) AS average_price_per_category
FROM Products
GROUP BY category;

SELECT category, ROUND(AVG(price)) AS average_price_per_category
FROM Products
GROUP BY category;
-- 23. Find the number of products per brand.
SELECT brand, COUNT(product_name) AS product_number
FROM Products
GROUP BY brand;
-- 24. Find the maximum price of a product in each category.
SELECT category, MAX(price) AS max_product_price
FROM Products
GROUP BY category;
-- 25. Find the minimum price of a product in each category.
SELECT category, Min(price) AS max_product_price
FROM Products
GROUP BY category;
-- 26. Find the average stock quantity per brand.
SELECT brand, AVG(stock_quantity) AS average_stock_quantity
FROM Products
GROUP BY brand;

SELECT brand, ROUND(AVG(stock_quantity)) AS average_stock_quantity
FROM Products
GROUP BY brand;
-- 27. Find the total number of products as launched_date.
SELECT launch_date, COUNT(launch_date) AS launch_date_year
FROM Products
GROUP BY launch_date;
-- 28. Find categories where the average price is above Rs 1000.
SELECT product_name, category, ROUND(AVG(price)) AS average_category_price
FROM Products
GROUP BY product_name, category, price
HAVING AVG(price) > 1000;
-- 29. Find categories that more than 4 products.
SELECT category
FROM Products 
GROUP BY category
HAVING COUNT(*) > 4;
-- 30. Find brands with an average products rating above 4.3.
SELECT brand, ROUND(AVG(rating)) AS average_rating_product
FROM Products
GROUP BY brand 
HAVING AVG(rating) > 4.3;
-- 31. Find categories where the total stock quantity is less than 500.
SELECT category, SUM(stock_quantity) AS total_stock
FROM Products
GROUP BY category
HAVING SUM(stock_quantity) < 500;
-- 32. Find brands that have 2 or more products.
SELECT brand, COUNT(*) AS brand_count
FROM Products
GROUP BY brand
HAVING COUNT(*) >= 2;
-- 33. Find categories where the maximum price exceed Rs 3000.
SELECT category, MAX(price) AS maximum_category_price
FROM Products
GROUP BY category
HAVING MAX(price) > 3000;
-- 34. Find Find brands whose stock value is above Rs 100000.
SELECT brand, SUM(price * stock_quantity) AS total_stock_value
FROM Products
GROUP BY brand
HAVING SUM(price * stock_quantity) > 100000;
-- 35. List all products ordered by price, highest to lowest.
SELECT * 
FROM 
Products
ORDER BY price DESC; 
-- 36. List all product ordered by rating lowest to highest.
SELECT *
FROM Products
ORDER BY rating ASC;
-- 37. Find the top 5 highest rated products.
SELECT * 
FROM Products 
ORDER BY rating DESC
LIMIT 5;
-- 38. Find the 3 cheapest products in the store.
SELECT *
FROM Products
ORDER BY price ASC
LIMIT 3;
-- 39. Find the 5 most recently lauched products.
SELECT * 
FROM Products
ORDER BY launch_date DESC
LIMIT 5;
-- 40. Find the top 3 categories with the highest total stock quantity.
SELECT category, SUM(stock_quantity) AS total_stock_quantity
FROM Products
GROUP BY category
ORDER BY total_stock_quantity DESC
LIMIT 3;
-- 41. List all products ordered alphabetically by product name.
SELECT product_name
FROM Products
ORDER BY product_name ASC;
-- 42. List all products ordered alphabetically by category name, and within each category, by product name.
SELECT *
FROM Products 
ORDER BY category ASC, product_name ASC;