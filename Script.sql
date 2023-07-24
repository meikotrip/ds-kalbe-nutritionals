--query 1 : Menghitung rata-rata umur customer jika dilihat dari marital statusnya
select "Marital Status" , avg(age) as average_age from customer group by "Marital Status"

--query 2 : Menghitung rata-rata umur customer jika dilihat dari gender nya
select 
	case 
		when gender = 0 then 'Wanita'
		when gender = 1 then 'Pria'
	end as gender,
	avg(age) as average_age 
from customer group by gender

--query 3 : Menampilkan nama store dengan total quantity terbanyak
select storename , sum(t.qty) as total_qty from store s
inner join "transaction" t  on s.storeid = t.storeid 
group by storename order by total_qty desc limit 1

--query 4 : Menampilkan nama produk terlaris dengan total amount terbanyak
select "Product Name" , sum(t.totalamount) as bigtotalamount from product p
inner join "transaction" t on p.productid = t.productid
group by "Product Name" order by bigtotalamount desc limit 1

