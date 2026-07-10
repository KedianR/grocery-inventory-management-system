create or replace view supplier_purchase_summary as 
select p.supplier_id,
	s.supplier_name,
	count(*) as total_no_of_purchases,
	sum(p.purchase_total_amount) as total_purchased_value
	from purchase p
	inner join supplier s
	on p.supplier_id  = s.supplier_id
	group by p.supplier_id,s.supplier_name;