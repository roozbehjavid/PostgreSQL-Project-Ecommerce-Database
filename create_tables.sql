-- create customers table

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(50),
    address TEXT
);

-- create products table

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price NUMERIC(9,2),
    stock_level INT
);

-- create orders table

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMERIC(9,2),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

-- create order_items table

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    price NUMERIC(9,2) CHECK (price >= 0.0),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    UNIQUE (order_id, product_id)
);
