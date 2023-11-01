-- Insert One Order
INSERT INTO orders (
    id, customer_id, order_date, total_purchase
    ) VALUES
    ('order-11', 'cust-1', '2023-11-01', 1050000);

-- Insert Three Order Detail
INSERT INTO order_details (
    id, order_id, product_id, quantity, sum_price
    ) VALUES
    ('order-detail-11', 'order-11', 'product-4', 1, 400000),
    ('order-detail-12', 'order-11', 'product-5', 2, 600000),
    ('order-detail-13', 'order-11', 'product-3', 1, 50000);

-- Update Stock and Qty Sold Product-4 (stock = 45 - 1)
UPDATE products
SET stock = 44, qty_sold = 1 
WHERE id = 'product-4';

-- Update Stock and Qty Sold Product-5 (stock = 100 - 2)
UPDATE products
SET stock = 98, qty_sold = 2
WHERE id = 'product-5';

-- Update Stock and Qty Sold Product-3 (stock = 5 - 1)
UPDATE products
SET stock = 4, qty_sold = 1
WHERE id = 'product-3';