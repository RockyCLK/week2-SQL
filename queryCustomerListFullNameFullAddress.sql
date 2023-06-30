SELECT	concat(c.first_name,' ', c.last_name) AS full_name,
	concat(a.address,', ', a.address2,', ', a.district,', ', ct.city,', ', a.postal_code,', ', cty.country) AS full_address
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country cty ON ct.country_id = cty.country_id
