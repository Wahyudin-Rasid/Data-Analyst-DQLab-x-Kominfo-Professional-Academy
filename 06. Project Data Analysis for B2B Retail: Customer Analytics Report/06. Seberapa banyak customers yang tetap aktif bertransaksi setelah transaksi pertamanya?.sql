#Menghitung total unik customers yang transaksi di quarter_1
SELECT COUNT(DISTINCT customerID) as total_customers FROM orders_1;
#output = 25
SELECT "1" as quarter, (COUNT(DISTINCT customerID)*100)/25 as q2 FROM orders_1 where customerid in (SELECT DISTINCT customerID FROM orders_2);
