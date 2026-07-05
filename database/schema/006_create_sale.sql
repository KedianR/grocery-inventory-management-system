create table sale(
sale_id INT generated always as identity primary key,
sale_timestamp TIMESTAMP not null  default current_timestamp,
payment_reference VARCHAR(30)  unique,
payment_method VARCHAR(10) check(payment_method in ('UPI','Cash','Card')),
total_sale_amount DECIMAL(10,2) not null check(total_sale_amount>=0))