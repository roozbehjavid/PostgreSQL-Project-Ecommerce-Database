-- insert data for customers table

INSERT INTO customers (name, email, phone, address)
VALUES 
('Alice Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St, Springfield, IL'),
('Bob Smith', 'bob.smith@example.com', '555-5678', '456 Oak St, Springfield, IL'),
('Charlie Brown', 'charlie.brown@example.com', '555-8765', '789 Pine St, Springfield, IL'),
('Diana Clark', 'diana.clark@example.com', '555-4321', '101 Maple St, Springfield, IL');

-- insert data for products table

INSERT INTO products (name, description, price, stock_level)
VALUES 
('Laptop', '15-inch laptop with 16GB RAM', 899.99, 50),
('Smartphone', '5G compatible smartphone with 128GB storage', 499.99, 100),
('Headphones', 'Noise-cancelling over-ear headphones', 129.99, 200),
('Keyboard', 'Mechanical keyboard with RGB backlighting', 79.99, 150);

-- insert data for orders table

INSERT INTO orders (customer_id, total_amount)
VALUES 
(1, 899.99),
(2, 499.99),
(3, 129.99),
(4, 79.99);

-- insert data for order_items table

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 899.99),  -- Alice ordered 1 Laptop
(2, 2, 1, 499.99),  -- Bob ordered 1 Smartphone
(3, 3, 1, 129.99),  -- Charlie ordered 1 Headphone
(4, 4, 1, 79.99);   -- Diana ordered 1 Keyboard
