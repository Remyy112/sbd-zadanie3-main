1. SELECT `customer_name` FROM `customers` WHERE `country`="Germany"
2. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin"
3. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin" AND `country`="Germany"
4. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin" OR `city`="München" AND `country`="Germany"
5. SELECT `customer_name` FROM `customers` WHERE NOT `country`="USA" AND `country`="Germany"
6. SELECT `customer_name` FROM `customers` ORDER BY `country` ASC
7. SELECT `customer_name` FROM `customers` ORDER BY `country` DESC
8. SELECT `customer_name` FROM `customers` ORDER BY `country` DESC, `customer_name` ASC

1. SELECT MIN(price) FROM `products` 
2. SELECT MAX(price) FROM `products`
3. SELECT COUNT(*) FROM `products`
4. SELECT COUNT(*) FROM `customers`
5. SELECT COUNT(*) FROM `customers` GROUP BY `country`
6. SELECT COUNT(*) FROM `products` WHERE `category_id`=1
7. SELECT COUNT(*) FROM `products` WHERE `category_id`=1
8. SELECT MAX(price) FROM `products` WHERE `category_id`=1 OR `category_id`=2 GROUP BY `category_id`


1. SELECT name FROM `products` WHERE price BETWEEN 10 AND 20
2. SELECT name FROM `products` WHERE price NOT BETWEEN 10 AND 20
3. SELECT name FROM `products` WHERE `category_id` IN (1,2,3)
4. SELECT * FROM `orders` WHERE `shipper_id` IN (1,2,3)
5. SELECT name FROM `products` WHERE price BETWEEN 10 AND 15 AND `category_id` NOT IN (1,2,3,4)
6. SELECT * FROM orders WHERE time(order_date) BETWEEN '1996-07-01' AND '1996-07-31';
7. SELECT * FROM `orders` WHERE customer_id IN (SELECT customer_id FROM orders WHERE customer_id BETWEEN 77 AND 90)