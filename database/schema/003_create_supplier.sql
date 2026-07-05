create table supplier(
supplier_id INT generated always as identity primary key,
supplier_name VArchar(100) not null,
supplier_address VARCHAR(255),
supplier_phone CHAR(10) not null unique)