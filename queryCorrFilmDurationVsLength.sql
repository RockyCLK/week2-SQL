WITH durating_vs_length AS (

SELECT DISTINCT avg(rental_duration) OVER (PARTITION BY length) as duration_average, length
FROM film
)

SELECT corr(duration_average, length)
FROM durating_vs_length;