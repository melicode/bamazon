DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
    item_id INTEGER (3),
    product_name VARCHAR(50),
    department_name VARCHAR(45),
    price DECIMAL (10,2),
    stock_quantity INT (3)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (001, "The Witcher 3: Wild Hunt", "Video Games", 59.99, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (002, "Grand Theft Auto V", "Video Games", 49.99, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (003, "Wolfenstein II: The New Colossus", "Video Games", 39.99, 50);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (004, "Assassin's Creed Origins", "Video Games", 1.00, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (005, "PlayStation 4 1TB Console", "Gaming Consoles", 299.99, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (006, "PlayStation 4 Pro Console", "Gaming Consoles", 399.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (007, "Xbox One S", "Gaming Consoles", 299.99, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (008, "Xbox One X 1TB Console", "Gaming Consoles", 499.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (009, "Xbox Wireless Controller", "Gaming Accessories", 59.99, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (010, "DualShock 4 Wireless Controller", "Gaming Accessories", 59.99, 15);


