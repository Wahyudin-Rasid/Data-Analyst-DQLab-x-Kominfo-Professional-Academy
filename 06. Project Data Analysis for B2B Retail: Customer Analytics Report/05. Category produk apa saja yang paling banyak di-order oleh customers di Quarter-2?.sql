select left(productcode,3) as categoryid, count(distinct ordernumber) as total_order, sum(quantity) as total_penjualan from 
(select productcode,ordernumber,quantity,status, left(productcode,3) as categoryid from orders_2 where status = "Shipped") tabel_c
group by left(productcode,3)
order by count(distinct ordernumber)desc
