SELECT title,
	CASE	WHEN length <=60 THEN 'short'
			WHEN length <=120 THEN 'medium'
			WHEN length >120 THEN 'long'
	END AS length_type
FROM film
ORDER BY title



