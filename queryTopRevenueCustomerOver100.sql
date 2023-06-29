SELECT p.customer_id, c.first_name, c.last_name, SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
HAVING SUM(p.amount) >= 100
ORDER BY total_revenue desc



