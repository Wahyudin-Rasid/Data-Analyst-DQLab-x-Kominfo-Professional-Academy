SELECT
	year(order_date) as years,
	product_sub_category,
	product_category,
	sum(sales) as sales,
	sum(discount_value) as promotion_value,
	round(sum(discount_value)/sum(sales)*100,2) as burn_rate_percentage
FROM
	dqlab_sales_store
WHERE
	year(order_date) = '2012' AND order_status = 'Order Finished'
GROUP BY
	year (order_date), product_sub_category, product_category
ORDER BY 
	Sales DESC
