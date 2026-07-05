create table purchase (
purchase_id int generated always as identity primary key,
purchase_timestamp TIMESTAMP default current_timestamp,
supplier_id INT not null,
Invoice_no VARCHAR(30) not null,
purchase_total_amount DECIMAL(10,2) not null,
foreign key (supplier_id) references supplier(supplier_id))