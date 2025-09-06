--Total number of orders per customer
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
FROM retail_customers c
LEFT JOIN retail_orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;