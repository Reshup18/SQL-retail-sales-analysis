CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount INT
);
