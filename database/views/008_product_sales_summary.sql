create or replace view product_sales_summary as 
select p.product_id,
p.name,
sum(s.product_sale_quantity) as quantity_sold,
sum(s.product_sale_quantity*s.product_selling_price) as revenue
from sale_item s
inner join product p
on p.product_id = s.product_id
group by p.product_id,p.name;