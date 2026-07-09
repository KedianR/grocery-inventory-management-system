create or replace function prevent_neagtive_stock()
returns trigger as 
$$
declare 
stock int ;
begin
	 select current_stock into stock from product 
	where product_id = new.product_id;
	if TG_OP = 'INSERT' then 
		if stock - new.product_sale_quantity < 0 then
		raise exception 'insufficient stock';
		end if;
		return new;
	end if;
	if TG_OP = 'UPDATE' then 
	if NEW.product_id <> OLD.product_id then
    raise exception 'Changing product_id is not allowed. Delete the row and insert a new one.';
	end if;
	if stock - new.product_sale_quantity + old.product_sale_quantity < 0 then
		raise exception 'insufficient stock';
		end if;
		return new;
	end if;
return new;
end;
$$ language plpgsql


create trigger trg_prevent_negative_stock 
before insert or update 
on sale_item 
for each row execute function prevent_neagtive_stock()