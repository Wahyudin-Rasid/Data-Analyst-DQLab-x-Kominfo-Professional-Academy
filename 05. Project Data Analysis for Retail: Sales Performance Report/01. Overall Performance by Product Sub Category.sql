SELECT
	year(order_date) as years,
	product_sub_category,
	sum(sales) as sales
FROM
	dqlab_sales_store
WHERE
	(year(order_date) between 2011 and 2012) and
	order_status = 'Order Finished'
GROUP BY
	year(order_date),
	product_sub_category
ORDER BY
	years asc,
	sales desc
