CREATE DATABASE RESTARUNT;
USE RESTARUNT;
SELECT * FROM restarunt.menu_items;
SELECT * FROM restarunt.order_details;
SELECT * FROM restarunt.restaurant_db_data_dictionary;

SELECT item_name from restarunt.menu_items WHERE price > 12;

SELECT item_name, price FROM restarunt.menu_items;

SELECT item_name FROM restarunt.menu_items WHERE category = 'Asian';

SELECT * FROM restarunt.order_details WHERE order_date = '1/1/23';

SELECT  DISTINCT COUNT(item_name)as total_items from  restarunt.menu_items;

SELECT * FROM restarunt.order_details WHERE item_id = '101';

SELECT item_name,MAX(price) as maximumprice from restarunt.menu_items GROUP BY item_name;

SELECT COUNT(order_id) AS total_orders FROM restarunt.order_details;

SELECT item_name, price FROM restarunt.menu_items WHERE price BETWEEN 5 AND 10;

SELECT * FROM restarunt.order_details WHERE TIME(order_time) <'12:00:00';

SELECT item_name from restarunt.menu_items WHERE category ='Mexican';

SELECT * FROM  restarunt.menu_items  WHERE item_name = 'French Fries';

SELECT COUNT(*) as totalpeople FROM restarunt.menu_items  GROUP BY category='Asian';