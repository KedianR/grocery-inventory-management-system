create or replace view daily_sales_summary as 
select DATE(sale_timestamp) as day,
count(sale_id) as number_of_sales,
sum(total_sale_amount) as total_revenue_for_day from sale
group by DATE(sale_timestamp);