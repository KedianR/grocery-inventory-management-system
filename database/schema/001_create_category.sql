create table category (
category_id INT generated always as  identity primary key,
category_name VARCHAR(50) not null unique,
description TEXT)