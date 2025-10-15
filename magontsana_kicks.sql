/**Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.**/

/** 
 * Store Name: Magontsana Kicks
 * Description: This project represents a sneaker store database storing sneakers from popular brands like Nike, Adidas, Puma, and more.
 * It includes the database schema, inserting 15 sneakers, and example queries for sorting, filtering, and statistics.
 **/

-- 1?? Database Schema (Create Table)
CREATE TABLE sneakers (
    SneakerID INTEGER PRIMARY KEY,
    Brand TEXT,
    Model TEXT,
    Size INTEGER,
    Price INTEGER,
    Stock INTEGER
);

-- 2?? Insert 15 Sneakers (Sample Data)
INSERT INTO sneakers VALUES (1, 'Nike', 'Air Force 1', 9, 1900, 20);
INSERT INTO sneakers VALUES (2, 'Adidas', 'Ultraboost 22', 7, 2300, 14);
INSERT INTO sneakers VALUES (3, 'Puma', 'RS-X', 10, 1600, 20);
INSERT INTO sneakers VALUES (4, 'New Balance', '550', 9, 2100, 17);
INSERT INTO sneakers VALUES (5, 'Nike', 'Air Jordan 1', 8, 3000, 19);
INSERT INTO sneakers VALUES (6, 'Reebok', 'Classic Leather', 7, 1600, 23);
INSERT INTO sneakers VALUES (7, 'Converse', 'Chuck Taylor', 7, 1300, 38);
INSERT INTO sneakers VALUES (8, 'Adidas', 'Stan Smith', 8, 1600, 22);
INSERT INTO sneakers VALUES (9, 'Vans', 'Old Skool', 9, 1300, 28);
INSERT INTO sneakers VALUES (10, 'Nike', 'Dunk Low', 10, 2800, 8);
INSERT INTO sneakers VALUES (11, 'Asics', 'Gel-Lyte III', 9, 1600, 15);
INSERT INTO sneakers VALUES (12, 'Fila', 'Disruptor II', 8, 1600, 16);
INSERT INTO sneakers VALUES (13, 'Under Armour', 'Curry Flow 9', 10, 2500, 9);
INSERT INTO sneakers VALUES (14, 'Adidas', 'Yeezy 350', 7, 4900, 5);
INSERT INTO sneakers VALUES (15, 'Nike', 'ZoomX Vaporfly', 8, 3990, 6);

-- 3?? Example Queries

-- Show all sneakers
SELECT * FROM sneakers;

-- Order sneakers by price ascending
SELECT * FROM sneakers
ORDER BY Price ASC;

-- Order sneakers by price descending
SELECT * FROM sneakers
ORDER BY Price DESC;

-- Show only Nike sneakers
SELECT * FROM sneakers
WHERE Brand = 'Nike';

-- Show sneakers costing more than 2000
SELECT * FROM sneakers
WHERE Price > 2000;

-- Calculate average price of sneakers
SELECT AVG(Price) AS Average_Price FROM sneakers;

-- Calculate total stock in store
SELECT SUM(Stock) AS Total_Stock FROM sneakers;

-- Find the most expensive sneaker
SELECT Brand, Model, Price
FROM sneakers
WHERE Price = (SELECT MAX(Price) FROM sneakers);

-- Find the cheapest sneaker
SELECT Brand, Model, Price
FROM sneakers
WHERE Price = (SELECT MIN(Price) FROM sneakers);
