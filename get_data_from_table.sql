-- Get All Data Products
SELECT * FROM products;

-- Get Email and Phone Customers
SELECT email, phone FROM customers;

-- Get All Orders Where customer_id
SELECT * FROM orders WHERE customer_id='cust-1'; 

-- Get All Products Order by Stock
SELECT * FROM products ORDER BY stock;

-- Get Category Name and Product Name
SELECT categories.name AS category, products.name AS product 
    FROM products
    INNER JOIN categories ON categories.id = products.category_id;