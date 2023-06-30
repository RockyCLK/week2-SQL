SELECT * INTO film_high_rate FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT * FROM film_high_rate;