create or replace view sales_detail as
select s.sale_id,
	p.name,
	s1.product_sale_quantity,
	s1.product_selling_price,
	s.payment_method,
	s.payment_reference,
	s.sale_timestamp,
	s.total_sale_amount
	from sale s
	join sale_item s1
	on s.sale_id = s1.sale_id
	join product p 
	on p.product_id = s1.product_id