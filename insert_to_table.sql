-- Insert Data Customers
INSERT INTO customers (
    id, first_name, last_name, email, password, phone
    ) VALUES 
    ('cust-1', 'Taufik', 'Satya', 'taufiksatya@gmail.com', 'password123', '08979320117'),
    ('cust-2', 'Hana', 'Athifah', 'hanaathifah@gmail.com', 'password123', '08979320118'),
    ('cust-3', 'Eringga', 'Septian', 'eringgaseptian@gmail.com', 'password123', '08979320119'),
    ('cust-4', 'Ramadian', 'Kafka', 'ramadiankafka@gmail.com', 'password123', '08979320111'),
    ('cust-5', 'Fani', 'Rachmah', 'fanirachmah@gmail.com', 'password123', '08979320112'),
    ('cust-6', 'Natasya', 'Anjalina', 'natasyaanjalina@gmail.com', 'password123', '08979320113'),
    ('cust-7', 'Bio', 'Ghifary', 'bioghifary@gmail.com', 'password123', '08979320114'),
    ('cust-8', 'Dimas', 'Alfa', 'dimasalfa@gmail.com', 'password123', '08979320115'),
    ('cust-9', 'Zahid', 'Fikri', 'zahidfikri@gmail.com', 'password123', '08979320116'),
    ('cust-10', 'Fakhri', 'Ganesh', 'fakhriganesh@gmail.com', 'password123', '08979320110');

-- Insert Data Categories
INSERT INTO categories (
    id, name
    ) VALUES
    ('category-1', 'Electronic'),
    ('category-2', 'Book'),
    ('category-3', 'Kitchen'),
    ('category-4', 'Fashion'),
    ('category-5', 'Music'),
    ('category-6', 'Gaming'),
    ('category-7', 'Gadget'),
    ('category-8', 'Mom & Baby'),
    ('category-9', 'Beauty'),
    ('category-10', 'Office & Stationery');

-- Insert Data Products
INSERT INTO products (
    id, category_id, name, price, stock, qty_sold 
    ) VALUES
    ('product-1', 'category-1', 'TV', 2000000, 25, 3),
    ('product-2', 'category-1', 'Refrigerator', 3000000, 10, 2),
    ('product-3', 'category-2', 'Atomic Habit', 50000, 5, 1),
    ('product-4', 'category-5', 'Guitar', 400000, 45, 2),
    ('product-5', 'category-4', 'Black Hoodie', 300000, 100, 4),
    ('product-6', 'category-4', 'Chino Trouser', 250000, 20, 1),
    ('product-7', 'category-10', 'Pen', 15000, 250, 5),
    ('product-8', 'category-3', 'Stove',250000, 50, 2),
    ('product-9', 'category-1', 'Air Conditioner',2500000, 10, 3),
    ('product-10', 'category-8', 'Baby Stroller', 800000, 8, 4);

-- Insert Data Orders
INSERT INTO orders (
    id, customer_id, order_date, total_purchase
    ) VALUES
    ('order-1', 'cust-1', '2023-10-31', 1000000),
    ('order-2', 'cust-2', '2023-10-30', 750000),
    ('order-3', 'cust-3', '2023-10-29', 1200000),
    ('order-4', 'cust-4', '2023-10-28', 950000),
    ('order-5', 'cust-5', '2023-10-27', 600000),
    ('order-6', 'cust-6', '2023-10-26', 450000),
    ('order-7', 'cust-7', '2023-10-25', 1100000),
    ('order-8', 'cust-8', '2023-10-24', 850000),
    ('order-9', 'cust-9', '2023-10-23', 700000),
    ('order-10', 'cust-10', '2023-10-22', 1300000);
    
-- Insert Data Order Details
INSERT INTO order_details (
    id, order_id, product_id, quantity, sum_price
    ) VALUES
    ('order-detail-1', 'order-1', 'product-1', 3, 6000000),
    ('order-detail-2', 'order-2', 'product-2', 2, 1500000),
    ('order-detail-3', 'order-3', 'product-3', 1, 50000),
    ('order-detail-4', 'order-4', 'product-4', 2, 800000),
    ('order-detail-5', 'order-5', 'product-5', 4, 1200000),
    ('order-detail-6', 'order-6', 'product-6', 1, 250000),
    ('order-detail-7', 'order-7', 'product-7', 5, 75000),
    ('order-detail-8', 'order-8', 'product-8', 2, 500000),
    ('order-detail-9', 'order-9', 'product-9', 3, 7500000),
    ('order-detail-10', 'order-10', 'product-10', 4, 3200000);