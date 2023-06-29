SELECT DISTINCT customer_id, 
	sum(amount) OVER (PARTITION BY EXTRACT(MONTH FROM payment_date), customer_id) as total_monthly_spend, 
	avg(amount) OVER (PARTITION BY EXTRACT(MONTH FROM payment_date), customer_id) as avg_monthly_spend, 
	EXTRACT(month FROM payment_date) as month
FROM payment
ORDER BY customer_id asc, month asc;