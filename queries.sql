-- Total spending by each customer
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- Customers whose total spending is above average
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > (
    SELECT AVG(amount) FROM orders
);

-- Monthly revenue analysis
SELECT MONTH(order_date) AS month, SUM(amount) AS monthly_revenue
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- Join customers and orders to view purchase data
SELECT c.customer_name, o.amount, o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- Top 3 highest spending customers
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;
