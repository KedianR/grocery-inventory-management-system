create or replace view inventory_value as
select product_id,name,current_stock,cost_price,cost_price*current_stock as total_cost_value,sell_price,sell_price*current_stock as total_sale_value
from product 