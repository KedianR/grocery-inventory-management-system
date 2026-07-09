create or replace view low_stock_products as 
select p.name,c.category_name,p.brand,p.current_stock,p.min_stock,p.min_stock-p.current_stock as shortage from product p
inner join category c
on p.category_id = c.category_id
where p.min_stock > p.current_stock
