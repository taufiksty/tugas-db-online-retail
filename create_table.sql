-- Create Table Customers
CREATE TABLE customers (
    id CHAR(50) NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Table Categoories
CREATE TABLE categories (
    id CHAR(50) NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Create Table Products
CREATE TABLE products (
    id CHAR(50) NOT NULL PRIMARY KEY,
    category_id CHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL UNIQUE,
    price FLOAT NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    qty_sold INT NOT NULL DEFAULT 0,
    last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories (id) ON DELETE SET NULL
);

-- Create Table Orders
CREATE TABLE orders (
    id CHAR(50) NOT NULL PRIMARY KEY,
    customer_id CHAR(50) NOT NULL,
    order_date DATE NOT NULL DEFAULT CURRENT_DATE,
    total_purchase FLOAT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
);

-- Create Table Order Details
CREATE TABLE order_details (
    id CHAR(50) NOT NULL,
    order_id CHAR(50) NOT NULL,
    product_id CHAR(50) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    sum_price FLOAT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
);
