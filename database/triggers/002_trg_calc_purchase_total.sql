--function to calculate purchase total amount

create or replace function calc_purchase_total()
returns trigger as 
$$
declare 
r_purchase_id int;
begin
r_purchase_id := coalesce(new.purchase_id,old.purchase_id);
update purchase 
set purchase_total_amount = 
(select coalesce(sum(product_cost_price*product_quantity),0) from purchase_item 
where purchase_id = r_purchase_id)
where purchase_id = r_purchase_id;
return new;
end;
$$ language plpgsql;

--trigger to calculate purchase total amount
create trigger trg_calc_purchase_total
after insert or after update or after delete
on purchase_item
for each row execute function calc_purchase_total();