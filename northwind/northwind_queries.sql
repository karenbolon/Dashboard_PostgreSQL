--URL of DASHBOARD:
http://ec2-18-196-208-53.eu-central-1.compute.amazonaws.com/public/dashboard/9cc02004-e79b-4656-96b7-097576a09820

URL per class project:
http://18.196.208.53/public/dashboard/9cc02004-e79b-4656-96b7-097576a09820


--Get the names and the quantities in stock for each product.
SELECT product_name, quantity_per_unit, units_in_stock FROM products
WHERE units_in_stock >0
ORDER BY units_in_stock DESC;

           product_name           |  quantity_per_unit   | units_in_stock 
----------------------------------+----------------------+----------------
 Rhönbräu Klosterbier             | 24 - 0.5 l bottles   |            125
 Boston Crab Meat                 | 24 - 4 oz tins       |            123
 Grandma's Boysenberry Spread     | 12 - 8 oz jars       |            120
 Pâté chinois                     | 24 boxes x 2 pies    |            115
 Sirop d'érable                   | 24 - 500 ml bottles  |            113
 Inlagd Sill                      | 24 - 250 g  jars     |            112
 Geitost                          | 500 g                |            112
 Sasquatch Ale                    | 24 - 12 oz bottles   |            111
 Gustaf's Knäckebröd              | 24 - 500 g pkgs.     |            104
 Röd Kaviar                       | 24 - 150 g jars      |            101
 Spegesild                        | 4 - 450 g glasses    |             95
 Queso Manchego La Pastora        | 10 - 500 g pkgs.     |             86
 Jack's New England Clam Chowder  | 12 - 12 oz cans      |             85
 Raclette Courdavault             | 5 kg pkg.            |             79
 Louisiana Fiery Hot Pepper Sauce | 32 - 8 oz bottles    |             76
 NuNuCa Nuß-Nougat-Creme          | 20 - 450 g glasses   |             76
 Chartreuse verte                 | 750 cc per bottle    |             69
 Valkoinen suklaa                 | 12 - 100 g bars      |             65
 Escargots de Bourgogne           | 24 pieces            |             62
 Tunnbröd                         | 12 - 250 g pkgs.     |             61
 Lakkalikööri                     | 500 ml               |             57
 Chef Anton's Cajun Seasoning     | 48 - 6 oz jars       |             53
 Laughing Lumberjack Lager        | 24 - 12 oz bottles   |             52
 Schoggi Schokolade               | 100 - 100 g pieces   |             49
 Carnarvon Tigers                 | 16 kg pkg.           |             42
 Sir Rodney's Marmalade           | 30 gift boxes        |             40
 Genen Shouyu                     | 24 - 250 ml bottles  |             39
 Chai                             | 10 boxes x 20 bags   |             39
 Filo Mix                         | 16 - 2 kg boxes      |             38
 Zaanse koeken                    | 10 - 4 oz boxes      |             36
 Ravioli Angelo                   | 24 - 250 g pkgs.     |             36
 Tofu                             | 40 - 100 g pkgs.     |             35
 Original Frankfurter grüne Soße  | 12 boxes             |             32
 Ikura                            | 12 - 200 ml jars     |             31
 Pavlova                          | 32 - 500 g boxes     |             29
 Mishi Kobe Niku                  | 18 - 500 g pkgs.     |             29
 Gula Malacca                     | 20 - 2 kg bags       |             27
 Rössle Sauerkraut                | 25 - 825 g cans      |             26
 Gudbrandsdalsost                 | 10 kg pkg.           |             26
 Singaporean Hokkien Fried Mee    | 32 - 1 kg pkgs.      |             26
 Flotemysost                      | 10 - 500 g pkgs.     |             26
 Teatime Chocolate Biscuits       | 10 boxes x 12 pieces |             25
 Vegie-spread                     | 15 - 625 g jars      |             24
 Konbu                            | 2 kg box             |             24
 Queso Cabrales                   | 1 kg pkg.            |             22
 Wimmers gute Semmelknödel        | 20 bags x 4 pieces   |             22
 Tourtière                        | 16 pies              |             21
 Gnocchi di nonna Alice           | 24 - 250 g pkgs.     |             21
 Manjimup Dried Apples            | 50 - 300 g pkgs.     |             20
 Steeleye Stout                   | 24 - 12 oz bottles   |             20
 Guaraná Fantástica               | 12 - 355 ml cans     |             20
 Camembert Pierrot                | 15 - 300 g rounds    |             19
 Chang                            | 24 - 12 oz bottles   |             17
 Ipoh Coffee                      | 16 - 500 g tins      |             17
 Tarte au sucre                   | 48 pies              |             17
 Côte de Blaye                    | 12 - 75 cl bottles   |             17
 Gumbär Gummibärchen              | 100 - 250 g bags     |             15
 Chocolade                        | 10 pkgs.             |             15
 Outback Lager                    | 24 - 355 ml bottles  |             15
 Uncle Bob's Organic Dried Pears  | 12 - 1 lb pkgs.      |             15
 Mozzarella di Giovanni           | 24 - 200 g pkgs.     |             14
 Aniseed Syrup                    | 12 - 550 ml bottles  |             13
 Gravad lax                       | 12 - 500 g pkgs.     |             11
 Nord-Ost Matjeshering            | 10 - 200 g glasses   |             10
 Maxilaku                         | 24 - 50 g pkgs.      |             10
 Mascarpone Fabioli               | 24 - 200 g pkgs.     |              9
 Scottish Longbreads              | 10 boxes x 8 pieces  |              6
 Northwoods Cranberry Sauce       | 12 - 12 oz jars      |              6
 Rogede sild                      | 1k pkg.              |              5
 Longlife Tofu                    | 5 kg pkg.            |              4
 Louisiana Hot Spiced Okra        | 24 - 8 oz jars       |              4
 Sir Rodney's Scones              | 24 pkgs. x 4 pieces  |              3
(72 rows)

--Get a list of current products (Product ID and name).
SELECT product_name, product_id, discontinued FROM products
WHERE discontinued = 0
ORDER BY product_id DESC;
 
            product_name           | product_id | discontinued 
----------------------------------+------------+--------------
 Original Frankfurter grüne Soße  |         77 |            0
 Lakkalikööri                     |         76 |            0
 Rhönbräu Klosterbier             |         75 |            0
 Longlife Tofu                    |         74 |            0
 Röd Kaviar                       |         73 |            0
 Mozzarella di Giovanni           |         72 |            0
 Flotemysost                      |         71 |            0
 Outback Lager                    |         70 |            0
 Gudbrandsdalsost                 |         69 |            0
 Scottish Longbreads              |         68 |            0
 Laughing Lumberjack Lager        |         67 |            0
 Louisiana Hot Spiced Okra        |         66 |            0
 Louisiana Fiery Hot Pepper Sauce |         65 |            0
 Wimmers gute Semmelknödel        |         64 |            0
 Vegie-spread                     |         63 |            0
 Tarte au sucre                   |         62 |            0
 Sirop d'érable                   |         61 |            0
 Camembert Pierrot                |         60 |            0
 Raclette Courdavault             |         59 |            0
 Escargots de Bourgogne           |         58 |            0
 Ravioli Angelo                   |         57 |            0
 Gnocchi di nonna Alice           |         56 |            0
 Pâté chinois                     |         55 |            0
 Tourtière                        |         54 |            0
 Filo Mix                         |         52 |            0
 Manjimup Dried Apples            |         51 |            0
 Valkoinen suklaa                 |         50 |            0
 Maxilaku                         |         49 |            0
 Chocolade                        |         48 |            0
 Zaanse koeken                    |         47 |            0
 Spegesild                        |         46 |            0
 Rogede sild                      |         45 |            0
 Gula Malacca                     |         44 |            0
 Ipoh Coffee                      |         43 |            0
 Jack's New England Clam Chowder  |         41 |            0
 Boston Crab Meat                 |         40 |            0
 Chartreuse verte                 |         39 |            0
 Côte de Blaye                    |         38 |            0
 Gravad lax                       |         37 |            0
 Inlagd Sill                      |         36 |            0
 Steeleye Stout                   |         35 |            0
 Sasquatch Ale                    |         34 |            0
 Geitost                          |         33 |            0
 Mascarpone Fabioli               |         32 |            0
 Gorgonzola Telino                |         31 |            0
 Nord-Ost Matjeshering            |         30 |            0
 Schoggi Schokolade               |         27 |            0
 Gumbär Gummibärchen              |         26 |            0
 NuNuCa Nuß-Nougat-Creme          |         25 |            0
 Tunnbröd                         |         23 |            0
 Gustaf's Knäckebröd              |         22 |            0
 Sir Rodney's Scones              |         21 |            0
 Sir Rodney's Marmalade           |         20 |            0
 Teatime Chocolate Biscuits       |         19 |            0
 Carnarvon Tigers                 |         18 |            0
 Pavlova                          |         16 |            0
 Genen Shouyu                     |         15 |            0
 Tofu                             |         14 |            0
 Konbu                            |         13 |            0
 Queso Manchego La Pastora        |         12 |            0
 Queso Cabrales                   |         11 |            0
 Ikura                            |         10 |            0
 Northwoods Cranberry Sauce       |          8 |            0
 Uncle Bob's Organic Dried Pears  |          7 |            0
 Grandma's Boysenberry Spread     |          6 |            0
 Chef Anton's Cajun Seasoning     |          4 |            0
 Aniseed Syrup                    |          3 |            0
 Chang                            |          2 |            0
 Chai                             |          1 |            0
(69 rows)

 --Get a list of the most and least expensive products (name and unit price).
 SELECT unit_price, product_name, product_id  FROM products
 WHERE unit_price = (SELECT MIN(unit_price) FROM products) or unit_price = (SELECT MAX(unit_price) FROM products);

 unit_price | product_name  | product_id 
------------+---------------+------------
        2.5 | Geitost       |         33
      263.5 | Côte de Blaye |         38
(2 rows)


 SELECT unit_price, product_name, product_id FROM products
 WHERE unit_price < 10 OR unit_price > 80
 ORDER BY unit_price;

unit_price |          product_name           | product_id 
------------+---------------------------------+------------
        2.5 | Geitost                         |         33
        4.5 | Guaraná Fantástica              |         24
          6 | Konbu                           |         13
          7 | Filo Mix                        |         52
       7.45 | Tourtière                       |         54
       7.75 | Rhönbräu Klosterbier            |         75
          9 | Tunnbröd                        |         23
        9.2 | Teatime Chocolate Biscuits      |         19
        9.5 | Rogede sild                     |         45
        9.5 | Zaanse koeken                   |         47
       9.65 | Jack's New England Clam Chowder |         41
         81 | Sir Rodney's Marmalade          |         20
         97 | Mishi Kobe Niku                 |          9
     123.79 | Thüringer Rostbratwurst         |         29
      263.5 | Côte de Blaye                   |         38
(15 rows)


--Get products that cost less than $20.
 SELECT unit_price, product_name, product_id FROM products
 WHERE unit_price <= 20
 ORDER BY unit_price;

 unit_price |          product_name           | product_id 
------------+---------------------------------+------------
        2.5 | Geitost                         |         33
        4.5 | Guaraná Fantástica              |         24
          6 | Konbu                           |         13
          7 | Filo Mix                        |         52
       7.45 | Tourtière                       |         54
       7.75 | Rhönbräu Klosterbier            |         75
          9 | Tunnbröd                        |         23
        9.2 | Teatime Chocolate Biscuits      |         19
        9.5 | Zaanse koeken                   |         47
        9.5 | Rogede sild                     |         45
       9.65 | Jack's New England Clam Chowder |         41
         10 | Longlife Tofu                   |         74
         10 | Aniseed Syrup                   |          3
         10 | Sir Rodney's Scones             |         21
         12 | Spegesild                       |         46
       12.5 | Scottish Longbreads             |         68
       12.5 | Gorgonzola Telino               |         31
      12.75 | Chocolade                       |         48
         13 | Original Frankfurter grüne Soße |         77
      13.25 | Escargots de Bourgogne          |         58
         14 | Singaporean Hokkien Fried Mee   |         42
         14 | NuNuCa Nuß-Nougat-Creme         |         25
         14 | Sasquatch Ale                   |         34
         14 | Laughing Lumberjack Lager       |         67
         15 | Outback Lager                   |         70
         15 | Röd Kaviar                      |         73
       15.5 | Genen Shouyu                    |         15
      16.25 | Valkoinen suklaa                |         50
         17 | Louisiana Hot Spiced Okra       |         66
      17.45 | Pavlova                         |         16
         18 | Chai                            |          1
         18 | Steeleye Stout                  |         35
         18 | Chartreuse verte                |         39
         18 | Lakkalikööri                    |         76
       18.4 | Boston Crab Meat                |         40
         19 | Inlagd Sill                     |         36
         19 | Chang                           |          2
      19.45 | Gula Malacca                    |         44
       19.5 | Ravioli Angelo                  |         57
         20 | Maxilaku                        |         49
(40 rows)

--Get products that cost between $15 and $25.
 SELECT unit_price, product_name, product_id FROM products
 WHERE unit_price BETWEEN 15 AND 25
 ORDER BY unit_price;

  unit_price |           product_name           | product_id 
------------+----------------------------------+------------
         15 | Röd Kaviar                       |         73
         15 | Outback Lager                    |         70
       15.5 | Genen Shouyu                     |         15
      16.25 | Valkoinen suklaa                 |         50
         17 | Louisiana Hot Spiced Okra        |         66
      17.45 | Pavlova                          |         16
         18 | Lakkalikööri                     |         76
         18 | Steeleye Stout                   |         35
         18 | Chartreuse verte                 |         39
         18 | Chai                             |          1
       18.4 | Boston Crab Meat                 |         40
         19 | Inlagd Sill                      |         36
         19 | Chang                            |          2
      19.45 | Gula Malacca                     |         44
       19.5 | Ravioli Angelo                   |         57
         20 | Maxilaku                         |         49
         21 | Gustaf's Knäckebröd              |         22
         21 | Queso Cabrales                   |         11
      21.05 | Louisiana Fiery Hot Pepper Sauce |         65
      21.35 | Chef Anton's Gumbo Mix           |          5
       21.5 | Flotemysost                      |         71
         22 | Chef Anton's Cajun Seasoning     |          4
      23.25 | Tofu                             |         14
         24 | Pâté chinois                     |         55
         25 | Grandma's Boysenberry Spread     |          6
(25 rows)

--Get products above average price.
 SELECT AVG(unit_price) FROM products;
         avg         
--------------------
 28.866363636363637
(1 row)

SELECT unit_price, product_name, product_id FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products)
ORDER BY unit_price;
unit_price |          product_name           | product_id 
------------+---------------------------------+------------
         30 | Uncle Bob's Organic Dried Pears |          7
         31 | Ikura                           |         10
      31.23 | Gumbär Gummibärchen             |         26
         32 | Mascarpone Fabioli              |         32
       32.8 | Perth Pasties                   |         53
      33.25 | Wimmers gute Semmelknödel       |         64
         34 | Camembert Pierrot               |         60
       34.8 | Mozzarella di Giovanni          |         72
         36 | Gudbrandsdalsost                |         69
         38 | Queso Manchego La Pastora       |         12
         38 | Gnocchi di nonna Alice          |         56
         39 | Alice Mutton                    |         17
         40 | Northwoods Cranberry Sauce      |          8
       43.9 | Vegie-spread                    |         63
       43.9 | Schoggi Schokolade              |         27
       45.6 | Rössle Sauerkraut               |         28
         46 | Ipoh Coffee                     |         43
       49.3 | Tarte au sucre                  |         62
         53 | Manjimup Dried Apples           |         51
         55 | Raclette Courdavault            |         59
       62.5 | Carnarvon Tigers                |         18
         81 | Sir Rodney's Marmalade          |         20
         97 | Mishi Kobe Niku                 |          9
     123.79 | Thüringer Rostbratwurst         |         29
      263.5 | Côte de Blaye                   |         38
(25 rows)

--Find the ten most expensive products.
 SELECT unit_price, product_name, product_id  FROM products
 ORDER BY unit_price DESC
 LIMIT 10;

  unit_price |      product_name       | product_id 
------------+-------------------------+------------
      263.5 | Côte de Blaye           |         38
     123.79 | Thüringer Rostbratwurst |         29
         97 | Mishi Kobe Niku         |          9
         81 | Sir Rodney's Marmalade'  |         20
       62.5 | Carnarvon Tigers        |         18
         55 | Raclette Courdavault    |         59
         53 | Manjimup Dried Apples   |         51
       49.3 | Tarte au sucre          |         62
         46 | Ipoh Coffee             |         43
       45.6 | Rössle Sauerkraut       |         28
(10 rows)

--Get a list of discontinued products (Product ID and name).
SELECT product_name, product_id, discontinued FROM products
WHERE discontinued = 1
ORDER BY product_id DESC;

        product_name          | product_id | discontinued 
-------------------------------+------------+--------------
 Perth Pasties                 |         53 |            1
 Singaporean Hokkien Fried Mee |         42 |            1
 Thüringer Rostbratwurst       |         29 |            1
 Rössle Sauerkraut             |         28 |            1
 Guaraná Fantástica            |         24 |            1
 Alice Mutton                  |         17 |            1
 Mishi Kobe Niku               |          9 |            1
 Chef Anton's Gumbo Mix'        |          5 |            1
(8 rows)

--Count current and discontinued products.
SELECT COUNT (product_id) FROM products
GROUP BY discontinued;
 count 
-------
    69
     8
(2 rows)

SELECT COUNT (discontinued) FROM products
GROUP BY discontinued;

 count 
-------
    69
     8
(2 rows)

--Find products with less units in stock than the quantity on order.
SELECT product_name, product_id, units_in_stock, units_on_order FROM products
WHERE units_in_stock < units_on_order
ORDER BY product_id ASC;

       product_name        | product_id | units_in_stock | units_on_order 
---------------------------+------------+----------------+----------------
 Chang                     |          2 |             17 |             40
 Aniseed Syrup             |          3 |             13 |             70
 Queso Cabrales            |         11 |             22 |             30
 Sir Rodney's Scones'       |         21 |              3 |             40
 Gorgonzola Telino         |         31 |              0 |             70
 Mascarpone Fabioli        |         32 |              9 |             40
 Gravad lax                |         37 |             11 |             50
 Rogede sild               |         45 |              5 |             70
 Chocolade                 |         48 |             15 |             70
 Maxilaku                  |         49 |             10 |             60
 Wimmers gute Semmelknödel |         64 |             22 |             80
 Louisiana Hot Spiced Okra |         66 |              4 |            100
 Scottish Longbreads       |         68 |              6 |             10
 Longlife Tofu             |         74 |              4 |             20
(14 rows)


--Find the customer who had the highest order amount
--on the order_details table, I created a new column called 'total_order_amount'
--unit_price*quantity*(1-discount)
--then I merged 'order_details' table to 'orders' table on order_id column
--then merged 'customers' table on customer_id column



--Get orders for a given employee and the according customer




--Find the hiring age of each employee
SELECT
  DATE_TRUNC('year', birth_date) AS age,
  COUNT(*) AS hire_date
FROM
  employees;


--Create views and/or named queries for some of these queries

SELECT products.product_id p
FROM products
    LEFT JOIN order_details od ON p.product_id = od.product_id
WHERE od.product_id IS NULL