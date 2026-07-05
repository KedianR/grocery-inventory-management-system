create table purchase_item (
purchase_item_id INT generated  always as identity primary key,
purchase_id INT not null,
product_id INT not null,
product_quantity INT not null check(product_quantity>0),
product_cost_price DECIMAL(10,2) not null CHECK (product_cost_price >= 0),
foreign key (purchase_id) references purchase(purchase_id),
foreign key (product_id) references product(product_id),
unique(product_id,purchase_id))
