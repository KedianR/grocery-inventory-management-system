create or replace view daily_purchase_summary as 
select DATE(purchase_timestamp) as day,
count(purchase_id) as number_of_purchases,
sum(purchase_total_amount) as total_cost_for_day from purchase
group by DATE(purchase_timestamp);