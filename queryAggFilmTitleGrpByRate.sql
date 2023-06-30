WITH agg_film_rate AS (
	SELECT * FROM film
--	LIMIT 20
)
select rental_rate, STRING_AGG(title, ';')
FROM agg_film_rate
GROUP BY rental_rate;
