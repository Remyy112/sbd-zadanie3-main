1. SELECT `customer_name` FROM `customers` WHERE `country`="Germany"
2. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin"
3. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin" AND `country`="Germany"
4. SELECT `customer_name` FROM `customers` WHERE `city`="Berlin" OR `city`="München" AND `country`="Germany"
5. SELECT `customer_name` FROM `customers` WHERE NOT `country`="USA" AND `country`="Germany"
6. SELECT `customer_name` FROM `customers` ORDER BY `country` ASC
7. SELECT `customer_name` FROM `customers` ORDER BY `country` DESC
8. SELECT `customer_name` FROM `customers` ORDER BY `country` DESC, `customer_name` ASC