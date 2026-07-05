INSERT INTO product
(category_id, product_name, product_brand, product_barcode,
product_sell_price, product_cost_price, product_current_stock,
product_unit, product_exp_date, product_min_stock)
VALUES

-- Dairy
(1,'Amul Gold Milk 500ml','Amul','8901262000011',35,30,50,'packet','2026-07-15',10),
(1,'Amul Butter 100g','Amul','8901262000012',60,52,40,'packet','2026-12-31',10),
(1,'Mother Dairy Curd 400g','Mother Dairy','8901262000013',45,38,30,'packet','2026-07-20',10),
(1,'Amul Cheese Cubes 200g','Amul','8901262000014',145,130,20,'packet','2026-11-30',5),
(1,'Amul Paneer 200g','Amul','8901262000015',90,80,25,'packet','2026-08-15',5),

-- Snacks
(2,'Maggi 70g','Nestle','8901262000021',15,12,100,'packet','2027-01-15',20),
(2,'Parle-G 100g','Parle','8901262000022',10,8,120,'packet','2027-02-01',20),
(2,'Good Day Biscuits 200g','Britannia','8901262000023',35,30,60,'packet','2027-02-10',15),
(2,'Lays Classic 52g','Lays','8901262000024',20,17,80,'packet','2027-03-01',15),
(2,'Kurkure Masala 90g','Kurkure','8901262000025',20,17,90,'packet','2027-03-01',15),

-- Beverages
(3,'Coca-Cola 750ml','Coca-Cola','8901262000031',40,34,70,'bottle','2027-05-01',15),
(3,'Pepsi 750ml','Pepsi','8901262000032',40,34,70,'bottle','2027-05-01',15),
(3,'Sprite 750ml','Coca-Cola','8901262000033',40,34,60,'bottle','2027-05-01',15),
(3,'Fanta 750ml','Coca-Cola','8901262000034',40,34,50,'bottle','2027-05-01',15),
(3,'Bisleri Water 1L','Bisleri','8901262000035',20,15,100,'bottle','2028-01-01',20),

-- Grains
(4,'Aashirvaad Atta 5kg','ITC','8901262000041',290,260,30,'bag',NULL,5),
(4,'India Gate Basmati Rice 5kg','India Gate','8901262000042',650,600,20,'bag',NULL,5),
(4,'Tata Salt 1kg','Tata','8901262000043',30,26,80,'packet','2028-06-01',20),
(4,'Fortune Besan 1kg','Fortune','8901262000044',95,85,40,'packet','2027-10-01',10),
(4,'Fortune Suji 1kg','Fortune','8901262000045',60,52,35,'packet','2027-10-01',10),

-- Stationery
(5,'Apsara Pencil Pack','Apsara','8901262000051',50,40,40,'box',NULL,10),
(5,'Classmate Notebook','Classmate','8901262000052',60,50,35,'piece',NULL,10),
(5,'Cello Pen Blue','Cello','8901262000053',10,7,200,'piece',NULL,50),

-- Cleaning Supplies
(6,'Surf Excel 1kg','Surf Excel','8901262000061',250,220,25,'packet',NULL,5),
(6,'Harpic 500ml','Harpic','8901262000062',120,105,30,'bottle',NULL,5),
(6,'Lizol 500ml','Lizol','8901262000063',140,125,20,'bottle',NULL,5),

-- Personal Care
(7,'Lux Soap','Lux','8901262000071',40,35,70,'piece',NULL,15),
(7,'Clinic Plus Shampoo 180ml','Clinic Plus','8901262000072',165,145,25,'bottle',NULL,5),
(7,'Colgate Toothpaste 200g','Colgate','8901262000073',120,105,40,'piece',NULL,10),

-- Bakery
(8,'Britannia Bread','Britannia','8901262000081',45,38,35,'packet','2026-07-10',10),
(8,'Britannia Cake','Britannia','8901262000082',35,30,25,'packet','2026-08-15',5),

-- Frozen Foods
(9,'McCain French Fries','McCain','8901262000091',140,125,20,'packet','2027-06-01',5),
(9,'Frozen Green Peas 500g','Safal','8901262000092',90,80,25,'packet','2027-05-01',5),

-- Other Food Items
(10,'Kissan Tomato Ketchup 500g','Kissan','8901262000101',120,105,30,'bottle','2027-08-01',5),
(10,'Nutella 350g','Nutella','8901262000102',380,350,15,'jar','2027-09-01',3);