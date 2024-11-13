-- 1. query to list all orders with basic details per customer

SELECT c.name AS customer_name, o.order_id, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id;

-- 2. query to retrieves details for each product within an order

SELECT 
    o.order_id,
    o.order_date,
    p.name AS product_name,
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) AS line_total
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
ORDER BY 
    o.order_id;

-- 3.query to display each product with the total quantity sold and the total revenue generated from it

SELECT 
    p.name AS product_name, 
    p.price, 
    SUM(oi.quantity) AS quantity_sold, 
    SUM(oi.quantity * oi.price) AS total_revenue
FROM 
    products p
JOIN 
    order_items oi ON p.product_id = oi.product_id
GROUP BY 
    p.name, p.price;


-- 4.query to aggregate the total number of orders and amount spent by each customer

SELECT 
    c.name AS customer_name, 
    COUNT(o.order_id) AS total_orders,
    SUM(oi.quantity * oi.price) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.name;

-- 5.query to order products by revenue and limits the results to the top 3 

SELECT p.name, 
       SUM(oi.quantity) AS quantity_sold, 
       SUM(oi.quantity * oi.price) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_revenue DESC
LIMIT 3;

-- 6.query to rank products by their total revenue and print top 3

SELECT p.name, 
       SUM(oi.quantity) AS quantity_sold, 
       SUM(oi.quantity * oi.price) AS total_revenue,
       RANK() OVER (ORDER BY SUM(oi.quantity * oi.price) DESC) AS revenue_rank
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_revenue DESC;

-- 7.query to result in total orders, average order amount and largest order amount

SELECT 
    c.customer_name, 
    COUNT(o.order_id) AS total_orders,
   ROUND(AVG(o.total_amount), 2) AS avg_order_amount,
    MAX(o.total_amount) AS largest_order_amount
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_name;
