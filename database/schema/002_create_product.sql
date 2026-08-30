create table product(
category_id INT,
product_id INT generated always as identity primary key,
name VARCHAR(100) not null,
brand VArchar(20) not null,
barcode VARCHAR(14) not null unique,
sell_price DECIMAL(10,2) not null,
cost_price DECIMAL(10,2) not null,
current_stock INT not null check(product_current_stock >=0),
unit VARCHAR(20) not null,
exp_date DATE,
min_stock INT not null check(product_min_stock>0),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
foreign key (category_id) references category(category_id),
check(sell_price>cost_price)
)
