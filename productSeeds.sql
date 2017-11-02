DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE table products(
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NULL,
department_name VARCHAR(100) NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY(item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Dog Food", "Pet Supplies", 41.99, 15),
       ("Fish Food", "Pet Supplies", 12.99, 8),
       ("Dog Toys", "Pet Supplies", 5.99, 3),
       ("Toilet Paper", "Disposable Goods", 11.59, 100),
       ("Diapers", "Disposable Goods", 27.99, 32),
       ("Coffee Maker", "Housewares", 15.99, 7),
       ("Lightbulbs", "Disposable Goods", 9.99, 12),
       ("Twin Sheet Set", "Housewares", 21.99, 9),
       ("Decorative Pillows", "Housewares", 23.99, 40),
       ("Paper Towels", "Disposable Goods", 7.79, 35);
       

