create table sale_item(
sale_item_id INT generated always as identity primary key,
product_id INT not null,
sale_id INT not null,
product_sale_quantity INT not null check(product_sale_quantity>0),
product_selling_price DECIMAL(10,2) not null check(product_selling_price>0),
foreign key (product_id) references product(product_id),
foreign key (sale_id) references sale(sale_id),
UNIQUE (sale_id, product_id))