create or replace view product_catalog as
select p.product_id,p.name,c.category_name,p.brand,p.barcode,p.unit,p.sell_price,p.cost_price,p.current_stock from product p
inner join category c 
on c.category_id = p.category_id