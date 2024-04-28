-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- SELECT queries: Retrieving information from the database

-- 1. Get all products available for sale
SELECT * FROM Products;

-- 2. Retrieve product details by product ID
SELECT * FROM Products WHERE product_id = <product_id>;

-- 3. Get all orders made by a specific user
SELECT * FROM Orders WHERE user_id = <user_id>;

-- 4. Retrieve all reviews for a particular product
SELECT * FROM Reviews WHERE product_id = <product_id>;

-- 5. Get the total sales revenue for a specific seller
SELECT SUM(total_price) AS total_revenue FROM Orders WHERE user_id = <seller_id>;

-- INSERT queries: Adding data to the database

-- 1. Add a new user to the database
INSERT INTO Users (username, email, password_hash) VALUES ('new_user', 'new_user@example.com', 'hashed_password');

-- 2. Create a new product listing
INSERT INTO Products (name, description, price, quantity_available, seller_id) VALUES ('New Product', 'Description of new product', 99.99, 10, <seller_id>);

-- 3. Place a new order
INSERT INTO Orders (user_id, product_id, quantity, total_price) VALUES (<user_id>, <product_id>, 1, <total_price>);

-- UPDATE queries: Modifying existing data in the database

-- 1. Update user details
UPDATE Users SET email = 'new_email@example.com' WHERE user_id = <user_id>;

-- 2. Modify product details
UPDATE Products SET price = 89.99, quantity_available = 5 WHERE product_id = <product_id>;

-- DELETE queries: Removing data from the database

-- 1. Delete a specific review
DELETE FROM Reviews WHERE review_id = <review_id>;

-- 2. Remove a product listing from the marketplace
DELETE FROM Products WHERE product_id = <product_id>;
