CREATE DATABASE land;

USE land;

CREATE TABLE continent
(
	continent_id int,
    continent_name varchar(20),
    population bigint
);

CREATE TABLE customer
(
customer_id int, 
first_name varchar(50),
last_name varchar(50),
address varchar(50),

primary key (customer_id)
);

CREATE TABLE high_temperature
(
city varchar(50),
year int, 
high_temperature int, 
primary key(city, year)
);

CREATE TABLE complaint
(
complaint_id int,
customer_id int, 
complaint varchar(200),
primary key (complaint_id),
foreign key(customer_id) references customer(customer_id)
);


-- Try it yourself Chapter 2 Page 18 

CREATE DATABASE athletic;

use athletic;

CREATE TABLE sport
(
sport_id int, 
sport_name varchar(50),
primary key (sport_id)
);

CREATE TABLE player
(
player_id int, 
player_name varchar(50),
player_age int, 
sport_id int,
primary key (player_id),
foreign key (sport_id) references sport(sport_id)
);

-- NOT NULL 

CREATE TABLE contact
(
contact_id int, 
name varchar(50) not null, -- This value is not null so i cant be null 
city varchar(50), 
phone varchar(50), 
email_address varchar(50), 
primary key(contact_id)
);


-- UNIQUE

CREATE TABLE contact
(
contact_id int, 
name varchar(50) not null, 
city varchar(50), 
phone varchar(50), 
email_address varchar(50) unique, -- Prevent duplicates
primary key(contact_id)
);


-- CHECK It's like and if statement data in not that range or circustances dont be allowed to save in the database

CREATE TABLE high_temperature
(
city varchar(50),
year int, 
high_temperature int, 
constraint check(year between 1880 and 2200),
constraint check(high_temperature > 200),
primary key (city, year)
);

-- DEFAULT basically a Function Default value in any ProLang
CREATE TABLE job
(
jod_id int, 
job_desc varchar(100),
shift varchar(50) default '9-5', 
primary key (job_id)
);


-- INDEXES

CREATE TABLE product
(
product_id int, 
product_name varchar(100),
supplier_id int
);

CREATE INDEX product_supplier_index on product(supplier_id);