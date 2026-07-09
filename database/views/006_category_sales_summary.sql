create or replace view category_sales_summary as
select 
c.category_id,
c.category_name,
sum(s.product_sale_quantity) as total_product_sold,
sum(s.product_selling_price) as total_revenue_from_product 
from category c 
inner join product p 
on c.category_id = p.category_id 
inner join sale_item s 
on s.product_id = p.product_id
group by c.category_id