SELECT
	year(order_date) as years,
	count(distinct customer) as number_of_customer
FROM
	dqlab_sales_store
WHERE
	order_status = 'Order Finished'
GROUP BY
	year (order_date)
