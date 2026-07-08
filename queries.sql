-- BUSINESS QUESTIONS & SOLUTION
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
