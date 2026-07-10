create or replace view purchases_detail as
select s.purchase_id,
	p.name,
	s1.product_quantity,
	s1.product_cost_price,
	s2.supplier_name,
	s.invoice_no,
	s.purchase_timestamp,
	s.purchase_total_amount
	from purchase s
	join purchase_item s1
	on s.purchase_id = s1.purchase_id
	join product p 
	on p.product_id = s1.product_id
	join supplier s2
	on s.supplier_id = s2.supplier_id
	