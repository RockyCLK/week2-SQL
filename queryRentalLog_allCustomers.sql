SELECT c.customer_id, c.first_name, c.last_name, f.title, r.rental_date
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY c.customer_id, c.first_name, c.last_name, f.title, r.rental_date
ORDER BY c.customer_id ASC, r.rental_date ASC;
