select quarter,sum(quantity) as total_penjualan,sum(quantity*priceeach) as revenue from 
(select ordernumber,status,quantity,priceeach, 1 as quarter from orders_1
UNION
select ordernumber,status,quantity,priceeach, 2 as quarter from orders_2)
as tabel_a where status = 'Shipped'
group by quarter;
