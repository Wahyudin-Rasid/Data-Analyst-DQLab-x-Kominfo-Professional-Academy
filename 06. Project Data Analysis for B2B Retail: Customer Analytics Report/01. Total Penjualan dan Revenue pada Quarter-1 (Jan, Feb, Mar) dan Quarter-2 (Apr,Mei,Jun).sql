select sum(quantity) as total_penjualan,sum(quantity*priceeach) as revenue from orders_1;
select sum(quantity) as total_penjualan,sum(quantity*priceeach) as revenue from orders_2 where status = 'Shipped';
