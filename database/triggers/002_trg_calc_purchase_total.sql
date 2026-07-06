create trigger trg_calc_purchase_total
after insert or after update or after delete
on purchase_item
for each row execute function calc_purchase_total();