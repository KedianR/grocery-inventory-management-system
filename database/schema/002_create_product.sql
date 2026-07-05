create table product(
category_id INT,
product_id INT generated always as identity primary key,
product_name VARCHAR(100) not null,
product_brand VArchar(20) not null,
product_barcode VARCHAR(14) not null unique,
product_sell_price DECIMAL(10,2) not null,
product_cost_price DECIMAL(10,2) not null,
product_current_stock INT not null check(product_current_stock >=0),
product_unit VARCHAR(20) not null,
product_exp_date DATE,
product_min_stock INT not null check(product_min_stock>0),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
foreign key (category_id) references category(category_id),
check(product_sell_price>product_cost_price)
)
