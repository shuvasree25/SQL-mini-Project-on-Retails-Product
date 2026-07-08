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
