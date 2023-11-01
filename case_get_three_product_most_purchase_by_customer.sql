-- Get 3 Products Most Purchase by Customers
SELECT * FROM products
ORDER BY qty_sold DESC
LIMIT 3;