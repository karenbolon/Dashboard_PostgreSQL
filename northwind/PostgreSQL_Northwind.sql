PostgresSQL Northwind

--How to login to PostgreSQL from terminal
--psql -U postgres

--How to list the databases in PostgreSQL
-- \l or \list

--How to create a database
--CREATE DATABASE northwind;

--how to connect to the databse northwind
--\c or \connect northwind

--How to create tables in database
--need Dataype
    --VARCHAR(n): text with a max length of n character
        ---VARCHAR == TEXT no upper limit
    --FLOAT: floating point number
    --INT: integer
    --SERIAL: it will automatically generate integer for all the rows

--Contraints:
    --NOT NULL: ensures that there are no missing values
    --CHECK: ensure that a certain condition is fulfilled
    --PRIMARY KEY: combination of NOT NULL and UNIQUE, uniquely defines each row of the table (like an index)
    --UNIQUE: ensures that there are no duplicates

-- add a new column
--ALTER TABLE customers ADD country_id SERIAL PRIMARY KEY;

--Log into AWS: psql -U postgres -h fenugreek.cuqv3fvc8e1e.eu-central-1.rds.amazonaws.com

--would this work in path?  './data/northwind/customers.csv'???

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id CHAR(5) PRIMARY KEY,
	company_name VARCHAR (100)not null,
	contact_name VARCHAR (100),
	contact_title VARCHAR (100),
	address VARCHAR (300),
	city VARCHAR (100),
	region VARCHAR (50), 
	postal_code VARCHAR (15),
	country VARCHAR (100),
	phone VARCHAR (20),
	fax VARCHAR (20)
);

\COPY customers(customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/customers.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
	category_id INTEGER PRIMARY KEY,
	category_name VARCHAR (100),
	description VARCHAR,
	picture VARCHAR
);
\COPY categories(category_id, category_name, description, picture) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/categories.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS employee_territories;
CREATE TABLE employee_territories (
	employee_id INTEGER,
	territory_id INTEGER PRIMARY KEY
 
);

\COPY employee_territories(employee_id, territory_id) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/employee_territories.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	employee_id INTEGER PRIMARY KEY,
    last_name VARCHAR (50),
	first_name VARCHAR(50),
	position_title VARCHAR(100),
	name_title VARCHAR (5),
	birth_date TIMESTAMP,
	hire_date TIMESTAMP,
	address VARCHAR,
	city CHAR (50),
	region CHAR(20),
	postal_code VARCHAR(20),
	country VARCHAR,
	home_phone VARCHAR (20),
	extension VARCHAR (10),
	photo VARCHAR,
	notes VARCHAR,
	reports_to INTEGER,
	photo_path VARCHAR
);

\COPY employees(employee_id, last_name, first_name, position_title, name_title, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/employees.csv' DELIMITER ',' CSV HEADER NULL AS 'NULL' ;


DROP TABLE IF EXISTS order_details;

CREATE TABLE order_details (
	order_id INTEGER,
	product_id INTEGER,
	unit_price FLOAT,
	quantity INTEGER,
	discount FLOAT,
    order_details_id SERIAL PRIMARY KEY
);

\COPY order_details(order_id, product_id, unit_price, quantity, discount) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/order_details.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
	order_id INTEGER PRIMARY KEY,
	customer_id VARCHAR (5),
	employee_id INTEGER,
	order_date TIMESTAMP,
	required_date TIMESTAMP,
	shipped_date TIMESTAMP,
	ship_via INTEGER,
	freight FLOAT,
	ship_name VARCHAR (100),
	ship_address VARCHAR (200),
	ship_city VARCHAR (50),
	ship_region VARCHAR,
	ship_postal_code VARCHAR,
	ship_country VARCHAR
);

\COPY orders(order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/orders.csv' DELIMITER ',' CSV HEADER NULL AS 'NULL' ;


DROP TABLE IF EXISTS products;

CREATE TABLE products (
	product_id INTEGER PRIMARY KEY,
	product_name VARCHAR,
	supplier_id INTEGER,
	category_id INTEGER,
	quantity_per_unit VARCHAR,
	unit_price FLOAT,
	units_in_stock INTEGER,
	units_on_order INTEGER,
	reorder_level INTEGER,
	discontinued INTEGER
);

\COPY products(product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/products.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS regions;
CREATE TABLE regions (
	region_id INTEGER PRIMARY KEY,
	region_description CHAR(20)
);

\COPY regions(region_id, region_description) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/regions.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS shippers;
CREATE TABLE shippers (
	shipper_id INTEGER PRIMARY KEY,
	company_name CHAR(50),
	phone VARCHAR(20)	
);

\COPY shippers(shipper_id, company_name, phone) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/shippers.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS suppliers;
CREATE TABLE suppliers (
	supplier_id INTEGER PRIMARY KEY,
	company_name VARCHAR(255),
	contact_name VARCHAR(255),
	contact_title CHAR(255),
	address VARCHAR(255),
	city CHAR(255),
	region CHAR(30), 
	postal_code VARCHAR(20),
	country CHAR(50),
	phone VARCHAR(50),
	fax VARCHAR(50),
	home_page VARCHAR 
);

\COPY suppliers(supplier_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, home_page) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/suppliers.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS territories;
CREATE TABLE territories (
	territory_id INTEGER PRIMARY KEY,
	territory_description CHAR(100),
	region_id INTEGER	
);

\COPY territories(territory_id, territory_description, region_id) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/northwind/territories.csv' DELIMITER ',' CSV HEADER;


--How to add a new column (this creates a new column, starts at 1 and ends at last row)
--ALTER TABLE northwind ADD country_id SERIAL PRIMARY KEY;

--How to insert full data from a csv file into the table
--if you have a datatype SERIAL, you must specify the columns.  If no SERIAL, than you can use the following:

--NO SERIAL
--COPY categories FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/categories.csv' DELIMITER ',' CSV HEADER;

--With SERIAL
--COPY categories(categoryID, categoryName, description, picture) FROM '/Users/karenbolon/Documents/spiced_projects/sandbox_dir/data/categories.csv' DELIMITER ',' CSV HEADER;


--DROP TABLE if exists (name of table)


--to run text file (all the info above), type in terminal
--psql -U postgres -d northwind -f PostgreSQL_Northwind.sql

