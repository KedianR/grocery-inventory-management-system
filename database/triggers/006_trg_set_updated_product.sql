create or replace function set_updated_product()
returns trigger as $$ 
begin
	if new.product_id <> old.product_id then 
	raise exception 'Changing product ids not allowed manually delete and reinsert please !!!';
	end if;
	 NEW.updated_at := current_timestamp;
return new;
end;
$$ language plpgsql

create trigger trg_set_updated_product
before update 
on product
for each row execute function  set_updated_product();