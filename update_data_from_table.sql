-- Update Price of Product
UPDATE products
SET price = 1800000
WHERE id = 'product-1';

-- Update last_name and phone of Customer
UPDATE customers
SET last_name = 'Schweinsteiger', phone = '081315514191'
WHERE id = 'cust-1';