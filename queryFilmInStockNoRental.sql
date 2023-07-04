SELECT i.inventory_id, f.title
FROM film f
JOIN inventory i ON f.film_id = i.film_id
WHERE i.inventory_id IN (
	SELECT inventory_id FROM inventory 
	EXCEPT
	SELECT DISTINCT inventory_id FROM rental
);
