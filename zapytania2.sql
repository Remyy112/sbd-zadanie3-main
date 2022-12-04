SELECTc.id AS `Customer id`,c.customer_name AS `Customer name`,c.contact_name AS `Contact name`,c.address AS `Address`,c.city AS `City`,c.post_code AS `Post code`,c.country AS `Country`,p.name AS `Product name`,p.price AS `Price of product`,od.quantity AS `Quantity` 
FROM `customers` AS `c`JOIN `orders` AS `o` ON o.customer_id = c.id JOIN `orders_details` AS `od` ON od.order_id = o.id JOIN `products` AS `p` ON od.product_id = p.id WHERE 1;
SELECT c.id AS `Customer id`,c.customer_name AS `Customer name`,c.contact_name AS `Contact name`,c.address AS `Address`,c.city AS `City`,c.post_code AS `Post code`,c.country AS `Country`,COUNT(o.id) AS `Orders made`
FROM`customers` AS `c` LEFT JOIN orders AS `o` ON o.customer_id = c.id WHERE 1 GROUP BY c.id
SELECT c.id AS `Customer id`,c.customer_name AS `Customer name`,c.contact_name AS `Contact name`,c.address AS `Address`,c.city AS `City`,c.post_code AS `Post code`,c.country AS `Country` 
FROM `customers` AS `c` JOIN orders AS `o` ON o.customer_id = c.id WHERE 1 GROUP BY c.id
SELECT e.id,e.first_name,e.last_name,o.id,o.customer_id,o.employee_id,o.order_date,o.shipper_id 
FROM `employees` AS `e` RIGHT JOIN `orders` AS `o` ON o.employee_id = e.id WHERE 1
SELECT c1.customer_name AS `Customer 1 name`,c2.customer_name AS `Customer 2 name`,c1.city AS `City`
FROM customers c1, customers c2 WHERE c1.id <> c2.id AND c1.City = c2.City;

SELECT * FROM `orders` LIMIT 10 OFFSET 10;
SELECT * FROM `orders` ORDER BY ID DESC LIMIT 10;

SELECT COUNT(`id`), `country` FROM customers GROUP BY `country` HAVING COUNT(`id`) > 5;
SELECT c.customer_name, COUNT(c.id) FROM `customers` as c JOIN orders as o ON o.customer_id = c.id GROUP By c.id HAVING COUNT(c.id) > 2 and COUNT(c.id) < 4;
SELECT e.first_name, e.last_name, COUNT(o.id) FROM `employees` as e JOIN orders as o ON o.employee_id = e.id GROUP By e.id HAVING COUNT(o.id) > 10;
SELECT e.last_name, EXISTS(SELECT COUNT(o.id) FROM orders as o WHERE o.employee_id = e.id HAVING COUNT(o.id)) FROM `employees` as e WHERE e.last_name="Davolio" OR e.last_name="Fuller";
SELECT `id`, `name`, `contact_name`, `address`, `city`, `post_code`, `country`, `phone` FROM `suppliers` as s WHERE EXISTS( SELECT p.id FROM products as p WHERE p.price < 20 AND p.supplier_id = s.id );

SELECT o.id, o.quantity,
CASE WHEN o.quantity > 30 THEN 'Liczba sztuk jest większa niż 30' WHEN o.quantity < 30 THEN 'Liczba sztuk jest mniejsza niż 30' ELSE 'Liczba sztuk jest równa 30' END AS ilosc FROM orders_details as o;
SELECT c.customer_name, c.city, c.country FROM customers as c ORDER BY CASE WHEN c.city = NULL THEN c.country ELSE c.city END;

SELECT DISTINCT(`country`) FROM `customers` WHERE 1;
SELECT COUNT(zliczanie.powtorzenie) FROM (SELECT DISTINCT(`country`) as powtorzenie FROM `customers` GROUP BY country HAVING COUNT(`country`) = 1) as zliczanie