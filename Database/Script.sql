CREATE TABLE  suppliers
(
supplier_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
location VARCHAR(40),
phone_number INT(15),
PRIMARY KEY (supplier_id)
);

CREATE TABLE  distributors
(
supplier_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
location VARCHAR(40),
phone_number INT(15),
PRIMARY KEY (supplier_id)
);


CREATE TABLE  rawmaterials_orders
(
order_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
supplier_id INT,
qunatity_unit INT,
date_of_order DATE,
date_of_delivery DATE,
price_per_unit INT,
total_price INT,
delivery_status VARCHAR(20),
warehouse_id INT,
PRIMARY KEY (order_id),
CONSTRAINT fk_category FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE  products_orders
(
order_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
distributor_id INT,
qunatity_unit INT,
date_of_order DATE,
date_of_delivery DATE,
price_per_unit INT,
total_price INT,
delivery_status VARCHAR(20),
warehouse_id INT,
PRIMARY KEY (order_id),
CONSTRAINT fk_category FOREIGN KEY (distributor_id) REFERENCES suppliers(distributor_id)
);

CREATE TABLE  rawmaterials_stock
(
order_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
price_per_unit INT,
quantity_unit INT,
price INT,
warehouse_id INT,
delivery_date DATE,
manufacturing_date DATE,
expiry_date DATE,
quality_check VARCHAR(20),
process_date DATE,
PRIMARY KEY (order_id)
);

CREATE TABLE  products_stock
(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
price_per_unit INT,
qunatity_unit INT,
price INT,
warehouse_id INT,
delivery_date DATE,
manufacturing_date DATE,
expiry_date DATE,
quality_check VARCHAR(20),
process_date DATE,
PRIMARY KEY (order_id)
);

CREATE TABLE warehouses(
warehouse_id INT,
location VARCHAR(20),
PRIMARY KEY (warehouse_id)
);




INSERT INTO rawmaterials_orders(name,supplier_id,quantity_value,qunatity_unit,date_of_order,date_of_delivery,price_per_unit,total_price,delivery_status,warehouse_id) 
VALUES ('rum',2,3,4,'2020-02-19','1999-02-19',10,100,'shipped',2);

