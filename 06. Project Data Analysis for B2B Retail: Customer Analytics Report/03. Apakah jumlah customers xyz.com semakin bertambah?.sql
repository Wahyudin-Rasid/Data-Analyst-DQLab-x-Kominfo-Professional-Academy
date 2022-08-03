select quarter(createdate) as quarter, count(distinct customerid) as total_customers from 
(select customerid,createdate,quarter(createdate) as quarter from customer where createdate between '2004-01-01' and '2004-06-30') as tabel_b
group by quarter(createdate);
