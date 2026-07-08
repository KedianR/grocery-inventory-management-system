create or replace function calc_sale_total()
returns trigger as 
$$
declare 
r_sale_id int;
begin
r_sale_id := coalesce(new.sale_id,old.sale_id);
update sale 
set sale_total_amount = 
(select coalesce(sum(product_sale_price*product_quantity),0) from sale_item 
where sale_id = r_sale_id)
where sale_id = r_sale_id;
return coalesce(new, old);
end;
$$ language plpgsql;

create trigger trg_calc_sale_total
after insert or  update or delete
on sale_item
for each row execute function calc_sale_total();