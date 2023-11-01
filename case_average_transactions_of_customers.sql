-- Get Average Transaction of Customers Within 1 Month
SELECT CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name, AVG(total_purchase) AS avg_purchase
FROM orders
INNER JOIN customers ON customers.id = orders.customer_id
WHERE orders.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY customers.id
ORDER BY avg_purchase DESC;